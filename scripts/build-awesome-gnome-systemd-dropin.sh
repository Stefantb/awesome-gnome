#!/bin/bash

set -euo pipefail

dest_dir="/usr/lib/systemd/user/gnome-session@awesome-gnome.target.d"
mkdir -p ${dest_dir}
chmod 0755 ${dest_dir}

src_dir="/usr/lib/systemd/user/gnome-session@gnome-flashback-compiz.target.d"
src_file="session.conf"

dest_file="awesome-gnome.session.conf"

cp -a ${src_dir}/* ${dest_dir}/

# The ubuntu one Requires gnome shell, we obviously do not.
sed s/Requires=org.gnome.Shell.target// < ${dest_dir}/${src_file} > ${dest_dir}/${dest_file}
rm ${dest_dir}/${src_file}

# Instead, we Want gnome-fallback. Its .target/.service files are provided by the apt package in universe.
grep -qF 'Wants=gnome-flashback.target' < ${dest_dir}/${dest_file} || echo Wants=gnome-flashback.target >> ${dest_dir}/${dest_file}
