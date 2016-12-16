#!/bin/sh -ex

CEPH_REF=${CEPH_REF:-master}
wget -q https://raw.githubusercontent.com/SUSE/ceph/$CEPH_REF/src/test/pybind/test_rados.py
#wget -O test_rados.py "https://git.ceph.com/?p=ceph.git;a=blob_plain;hb=$CEPH_REF;f=src/test/pybind/test_rados.py" || \
#    wget -O test_rados.py "https://git.ceph.com/?p=ceph.git;a=blob_plain;hb=ref/heads/$CEPH_REF;f=src/test/pybind/test_rados.py"
${PYTHON:-python} -m nose -v test_rados
exit 0
