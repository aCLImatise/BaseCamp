version 1.0

task GsutilRsync {
  input {
    Int? sets_named_cannedacl
    Boolean? causes_command_compute
    Boolean? error_occurs_continue
    Boolean? delete_extra_files
    Boolean? exclude_symlinks_when
    Boolean? causes_rsync_run
    Boolean? causes_acls_preserved
    Boolean? causes_posix_attributes
    Boolean? r_r_options
    Boolean? skip_objects_objects
    File? causes_pattern_excluded
    String workstation_dot
    String operations_dot
    String hang_dot
  }
  command <<<
    gsutil rsync \
      ~{workstation_dot} \
      ~{operations_dot} \
      ~{hang_dot} \
      ~{if defined(sets_named_cannedacl) then ("-a " +  '"' + sets_named_cannedacl + '"') else ""} \
      ~{if (causes_command_compute) then "-c" else ""} \
      ~{if (error_occurs_continue) then "-C" else ""} \
      ~{if (delete_extra_files) then "-d" else ""} \
      ~{if (exclude_symlinks_when) then "-e" else ""} \
      ~{if (causes_rsync_run) then "-n" else ""} \
      ~{if (causes_acls_preserved) then "-p" else ""} \
      ~{if (causes_posix_attributes) then "-P" else ""} \
      ~{if (r_r_options) then "-R" else ""} \
      ~{if (skip_objects_objects) then "-U" else ""} \
      ~{if defined(causes_pattern_excluded) then ("-x " +  '"' + causes_pattern_excluded + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sets_named_cannedacl: "Sets named canned_acl when uploaded objects created. See\\n\\\"gsutil help acls\\\" for further details. Note that rsync will\\ndecide whether or not to perform a copy based only on object size\\nand modification time, not current ACL state. Also see the -p\\noption below."
    causes_command_compute: "Causes the rsync command to compute and compare checksums\\n(instead of comparing mtime) for files if the size of source and\\ndestination as well as mtime (if available) match. This option\\nincreases local disk I/O and run time if either src_url or\\ndst_url are on the local file system."
    error_occurs_continue: "If an error occurs, continue to attempt to copy the remaining\\nfiles. If errors occurred, gsutil's exit status will be non-zero\\neven if this flag is set. This option is implicitly set when\\nrunning \\\"gsutil -m rsync...\\\".  Note: -C only applies to the\\nactual copying operation. If an error occurs while iterating\\nover the files in the local directory (e.g., invalid Unicode\\nfile name) gsutil will print an error message and abort."
    delete_extra_files: "Delete extra files under dst_url not found under src_url. By\\ndefault extra files are not deleted. Note: this option can\\ndelete data quickly if you specify the wrong source/destination\\ncombination. See the help section above,\\n\\\"BE CAREFUL WHEN USING -d OPTION!\\\"."
    exclude_symlinks_when: "Exclude symlinks. When specified, symbolic links will be\\nignored. Note that gsutil does not follow directory symlinks,\\nregardless of whether -e is specified."
    causes_rsync_run: "Causes rsync to run in \\\"dry run\\\" mode, i.e., just outputting\\nwhat would be copied or deleted without actually doing any\\ncopying/deleting."
    causes_acls_preserved: "Causes ACLs to be preserved when objects are copied. Note that\\nrsync will decide whether or not to perform a copy based only\\non object size and modification time, not current ACL state.\\nThus, if the source and destination differ in size or\\nmodification time and you run gsutil rsync -p, the file will be\\ncopied and ACL preserved. However, if the source and destination\\ndon't differ in size or checksum but have different ACLs,\\nrunning gsutil rsync -p will have no effect.\\nNote that this option has performance and cost implications when\\nusing the XML API, as it requires separate HTTP calls for\\ninteracting with ACLs. The performance issue can be mitigated to\\nsome degree by using gsutil -m rsync to cause parallel\\nsynchronization. Also, this option only works if you have OWNER\\naccess to all of the objects that are copied.\\nYou can avoid the additional performance and cost of using\\nrsync -p if you want all objects in the destination bucket to\\nend up with the same ACL by setting a default object ACL on that\\nbucket instead of using rsync -p. See 'gsutil help defacl'."
    causes_posix_attributes: "Causes POSIX attributes to be preserved when objects are copied.\\nWith this feature enabled, gsutil rsync will copy fields\\nprovided by stat. These are the user ID of the owner, the group\\nID of the owning group, the mode (permissions) of the file, and\\nthe access/modification time of the file. For downloads, these\\nattributes will only be set if the source objects were uploaded\\nwith this flag enabled.\\nOn Windows, this flag will only set and restore access time and\\nmodification time. This is because Windows doesn't have a notion\\nof POSIX uid/gid/mode."
    r_r_options: "The -R and -r options are synonymous. Causes directories,\\nbuckets, and bucket subdirectories to be synchronized\\nrecursively. If you neglect to use this option gsutil will make\\nonly the top-level directory in the source and destination URLs\\nmatch, skipping any sub-directories."
    skip_objects_objects: "Skip objects with unsupported object types instead of failing.\\nUnsupported object types are Amazon S3 Objects in the GLACIER\\nstorage class."
    causes_pattern_excluded: "Causes files/objects matching pattern to be excluded, i.e., any\\nmatching files/objects will not be copied or deleted. Note that\\nthe pattern is a Python regular expression, not a wildcard (so,\\nmatching any string ending in \\\"abc\\\" would be specified using\\n\\\".*abc$\\\" rather than \\\"*abc\\\"). Note also that the exclude path is\\nalways relative (similar to Unix rsync or tar exclude options).\\nFor example, if you run the command:\\ngsutil rsync -x \\\"data./.*\\.txt$\\\" dir gs://my-bucket\\nit will skip the file dir/data1/a.txt.\\nYou can use regex alternation to specify multiple exclusions,\\nfor example:\\ngsutil rsync -x \\\".*\\.txt$|.*\\.jpg$\\\" dir gs://my-bucket\\nNOTE: While it will work to surround the regular expression with\\neither single or double quotes on Linux and MacOS, on Windows\\nyou need to use double quotes.\\n"
    workstation_dot: "BE CAREFUL WHEN USING -d OPTION!"
    operations_dot: "Note that there are cases where retrying will never succeed, such as if you"
    hang_dot: "4. The gsutil rsync command copies changed files in their entirety and does"
  }
  output {
    File out_stdout = stdout()
  }
}