class: CommandLineTool
id: gsutil_help_rsync.cwl
inputs:
- id: a
  doc: Sets named canned_acl when uploaded objects created. See "gsutil help acls"
    for further details. Note that rsync will decide whether or not to perform a copy
    based only on object size and modification time, not current ACL state. Also see
    the -p option below.
  type: string
  inputBinding:
    prefix: -a
- id: c
  doc: Causes the rsync command to compute and compare checksums (instead of comparing
    mtime) for files if the size of source and destination as well as mtime (if available)
    match. This option increases local disk I/O and run time if either src_url or
    dst_url are on the local file system.
  type: boolean
  inputBinding:
    prefix: -c
- id: c
  doc: "If an error occurs, continue to attempt to copy the remaining files. If errors\
    \ occurred, gsutil's exit status will be non-zero even if this flag is set. This\
    \ option is implicitly set when running \"gsutil -m rsync...\".  Note: -C only\
    \ applies to the actual copying operation. If an error occurs while iterating\
    \ over the files in the local directory (e.g., invalid Unicode file name) gsutil\
    \ will print an error message and abort."
  type: boolean
  inputBinding:
    prefix: -C
- id: d
  doc: 'Delete extra files under dst_url not found under src_url. By default extra
    files are not deleted. Note: this option can delete data quickly if you specify
    the wrong source/destination combination. See the help section above, "BE CAREFUL
    WHEN USING -d OPTION!".'
  type: boolean
  inputBinding:
    prefix: -d
- id: e
  doc: Exclude symlinks. When specified, symbolic links will be ignored. Note that
    gsutil does not follow directory symlinks, regardless of whether -e is specified.
  type: boolean
  inputBinding:
    prefix: -e
- id: n
  doc: Causes rsync to run in "dry run" mode, i.e., just outputting what would be
    copied or deleted without actually doing any copying/deleting.
  type: boolean
  inputBinding:
    prefix: -n
- id: p
  doc: Causes ACLs to be preserved when objects are copied. Note that rsync will decide
    whether or not to perform a copy based only on object size and modification time,
    not current ACL state. Thus, if the source and destination differ in size or modification
    time and you run gsutil rsync -p, the file will be copied and ACL preserved. However,
    if the source and destination don't differ in size or checksum but have different
    ACLs, running gsutil rsync -p will have no effect. Note that this option has performance
    and cost implications when using the XML API, as it requires separate HTTP calls
    for interacting with ACLs. The performance issue can be mitigated to some degree
    by using gsutil -m rsync to cause parallel synchronization. Also, this option
    only works if you have OWNER access to all of the objects that are copied. You
    can avoid the additional performance and cost of using rsync -p if you want all
    objects in the destination bucket to end up with the same ACL by setting a default
    object ACL on that bucket instead of using rsync -p. See 'gsutil help defacl'.
  type: boolean
  inputBinding:
    prefix: -p
- id: p
  doc: Causes POSIX attributes to be preserved when objects are copied. With this
    feature enabled, gsutil rsync will copy fields provided by stat. These are the
    user ID of the owner, the group ID of the owning group, the mode (permissions)
    of the file, and the access/modification time of the file. For downloads, these
    attributes will only be set if the source objects were uploaded with this flag
    enabled. On Windows, this flag will only set and restore access time and modification
    time. This is because Windows doesn't have a notion of POSIX uid/gid/mode.
  type: boolean
  inputBinding:
    prefix: -P
- id: r
  doc: The -R and -r options are synonymous. Causes directories, buckets, and bucket
    subdirectories to be synchronized recursively. If you neglect to use this option
    gsutil will make only the top-level directory in the source and destination URLs
    match, skipping any sub-directories.
  type: boolean
  inputBinding:
    prefix: -R
- id: u
  doc: Skip objects with unsupported object types instead of failing. Unsupported
    object types are Amazon S3 Objects in the GLACIER storage class.
  type: boolean
  inputBinding:
    prefix: -U
- id: x
  doc: 'Causes files/objects matching pattern to be excluded, i.e., any matching files/objects
    will not be copied or deleted. Note that the pattern is a Python regular expression,
    not a wildcard (so, matching any string ending in "abc" would be specified using
    ".*abc$" rather than "*abc"). Note also that the exclude path is always relative
    (similar to Unix rsync or tar exclude options). For example, if you run the command:
    gsutil rsync -x "data./.*\.txt$" dir gs://my-bucket it will skip the file dir/data1/a.txt.
    You can use regex alternation to specify multiple exclusions, for example: gsutil
    rsync -x ".*\.txt$|.*\.jpg$" dir gs://my-bucket NOTE: While it will work to surround
    the regular expression with either single or double quotes on Linux and MacOS,
    on Windows you need to use double quotes.'
  type: string
  inputBinding:
    prefix: -x
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- help
- rsync
