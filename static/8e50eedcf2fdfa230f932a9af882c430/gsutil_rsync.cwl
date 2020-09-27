class: CommandLineTool
id: gsutil_rsync.cwl
inputs:
- id: in_sets_named_cannedacl
  doc: "Sets named canned_acl when uploaded objects created. See\n\"gsutil help acls\"\
    \ for further details. Note that rsync will\ndecide whether or not to perform\
    \ a copy based only on object size\nand modification time, not current ACL state.\
    \ Also see the -p\noption below."
  type: long
  inputBinding:
    prefix: -a
- id: in_causes_command_compute
  doc: "Causes the rsync command to compute and compare checksums\n(instead of comparing\
    \ mtime) for files if the size of source and\ndestination as well as mtime (if\
    \ available) match. This option\nincreases local disk I/O and run time if either\
    \ src_url or\ndst_url are on the local file system."
  type: boolean
  inputBinding:
    prefix: -c
- id: in_error_occurs_continue
  doc: "If an error occurs, continue to attempt to copy the remaining\nfiles. If errors\
    \ occurred, gsutil's exit status will be non-zero\neven if this flag is set. This\
    \ option is implicitly set when\nrunning \"gsutil -m rsync...\".  Note: -C only\
    \ applies to the\nactual copying operation. If an error occurs while iterating\n\
    over the files in the local directory (e.g., invalid Unicode\nfile name) gsutil\
    \ will print an error message and abort."
  type: boolean
  inputBinding:
    prefix: -C
- id: in_delete_extra_files
  doc: "Delete extra files under dst_url not found under src_url. By\ndefault extra\
    \ files are not deleted. Note: this option can\ndelete data quickly if you specify\
    \ the wrong source/destination\ncombination. See the help section above,\n\"BE\
    \ CAREFUL WHEN USING -d OPTION!\"."
  type: boolean
  inputBinding:
    prefix: -d
- id: in_exclude_symlinks_specified
  doc: "Exclude symlinks. When specified, symbolic links will be\nignored. Note that\
    \ gsutil does not follow directory symlinks,\nregardless of whether -e is specified."
  type: boolean
  inputBinding:
    prefix: -e
- id: in_causes_rsync_run
  doc: "Causes rsync to run in \"dry run\" mode, i.e., just outputting\nwhat would\
    \ be copied or deleted without actually doing any\ncopying/deleting."
  type: boolean
  inputBinding:
    prefix: -n
- id: in_causes_acls_preserved
  doc: "Causes ACLs to be preserved when objects are copied. Note that\nrsync will\
    \ decide whether or not to perform a copy based only\non object size and modification\
    \ time, not current ACL state.\nThus, if the source and destination differ in\
    \ size or\nmodification time and you run gsutil rsync -p, the file will be\ncopied\
    \ and ACL preserved. However, if the source and destination\ndon't differ in size\
    \ or checksum but have different ACLs,\nrunning gsutil rsync -p will have no effect.\n\
    Note that this option has performance and cost implications when\nusing the XML\
    \ API, as it requires separate HTTP calls for\ninteracting with ACLs. The performance\
    \ issue can be mitigated to\nsome degree by using gsutil -m rsync to cause parallel\n\
    synchronization. Also, this option only works if you have OWNER\naccess to all\
    \ of the objects that are copied.\nYou can avoid the additional performance and\
    \ cost of using\nrsync -p if you want all objects in the destination bucket to\n\
    end up with the same ACL by setting a default object ACL on that\nbucket instead\
    \ of using rsync -p. See 'gsutil help defacl'."
  type: boolean
  inputBinding:
    prefix: -p
- id: in_causes_posix_attributes
  doc: "Causes POSIX attributes to be preserved when objects are copied.\nWith this\
    \ feature enabled, gsutil rsync will copy fields\nprovided by stat. These are\
    \ the user ID of the owner, the group\nID of the owning group, the mode (permissions)\
    \ of the file, and\nthe access/modification time of the file. For downloads, these\n\
    attributes will only be set if the source objects were uploaded\nwith this flag\
    \ enabled.\nOn Windows, this flag will only set and restore access time and\n\
    modification time. This is because Windows doesn't have a notion\nof POSIX uid/gid/mode."
  type: boolean
  inputBinding:
    prefix: -P
- id: in_r_r_options
  doc: "The -R and -r options are synonymous. Causes directories,\nbuckets, and bucket\
    \ subdirectories to be synchronized\nrecursively. If you neglect to use this option\
    \ gsutil will make\nonly the top-level directory in the source and destination\
    \ URLs\nmatch, skipping any sub-directories."
  type: boolean
  inputBinding:
    prefix: -R
- id: in_skip_objects_unsupported
  doc: "Skip objects with unsupported object types instead of failing.\nUnsupported\
    \ object types are Amazon S3 Objects in the GLACIER\nstorage class."
  type: boolean
  inputBinding:
    prefix: -U
- id: in_causes_filesobjects_matching
  doc: "Causes files/objects matching pattern to be excluded, i.e., any\nmatching\
    \ files/objects will not be copied or deleted. Note that\nthe pattern is a Python\
    \ regular expression, not a wildcard (so,\nmatching any string ending in \"abc\"\
    \ would be specified using\n\".*abc$\" rather than \"*abc\"). Note also that the\
    \ exclude path is\nalways relative (similar to Unix rsync or tar exclude options).\n\
    For example, if you run the command:\ngsutil rsync -x \"data./.*\\.txt$\" dir\
    \ gs://my-bucket\nit will skip the file dir/data1/a.txt.\nYou can use regex alternation\
    \ to specify multiple exclusions,\nfor example:\ngsutil rsync -x \".*\\.txt$|.*\\\
    .jpg$\" dir gs://my-bucket\nNOTE: While it will work to surround the regular expression\
    \ with\neither single or double quotes on Linux and MacOS, on Windows\nyou need\
    \ to use double quotes.\n"
  type: File
  inputBinding:
    prefix: -x
- id: in_workstation_dot
  doc: BE CAREFUL WHEN USING -d OPTION!
  type: string
  inputBinding:
    position: 0
- id: in_operations_dot
  doc: Note that there are cases where retrying will never succeed, such as if you
  type: string
  inputBinding:
    position: 0
- id: in_hang_dot
  doc: 4. The gsutil rsync command copies changed files in their entirety and does
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gsutil
- rsync
