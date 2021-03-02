version 1.0

task Unzip {
  input {
    Boolean? extract_files_pipe
    Boolean? freshen_existing_files
    Boolean? update_files_create
    Boolean? list_verboselyshow_info
    Boolean? exclude_files_follow
    Boolean? never_overwrite_files
    Boolean? overwrite_files_files
    Boolean? junk_paths_make
    Boolean? match_filenames_caseinsensitively
    Boolean? restore_uidgid_info
    Boolean? keep_permissions_pipe
    Boolean? opts
    Boolean? z
    String? modifiers
    File var_file
  }
  command <<<
    unzip \
      ~{modifiers} \
      ~{var_file} \
      ~{if (extract_files_pipe) then "-p" else ""} \
      ~{if (freshen_existing_files) then "-f" else ""} \
      ~{if (update_files_create) then "-u" else ""} \
      ~{if (list_verboselyshow_info) then "-v" else ""} \
      ~{if (exclude_files_follow) then "-x" else ""} \
      ~{if (never_overwrite_files) then "-n" else ""} \
      ~{if (overwrite_files_files) then "-o" else ""} \
      ~{if (junk_paths_make) then "-j" else ""} \
      ~{if (match_filenames_caseinsensitively) then "-C" else ""} \
      ~{if (restore_uidgid_info) then "-X" else ""} \
      ~{if (keep_permissions_pipe) then "-K" else ""} \
      ~{if (opts) then "-opts" else ""} \
      ~{if (z) then "-Z" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/unzip:6.0"
  }
  parameter_meta {
    extract_files_pipe: "extract files to pipe, no messages     -l  list files (short format)"
    freshen_existing_files: "freshen existing files, create none    -t  test compressed archive data"
    update_files_create: "update files, create if necessary      -z  display archive comment only"
    list_verboselyshow_info: "list verbosely/show version info       -T  timestamp archive to latest"
    exclude_files_follow: "exclude files that follow (in xlist)   -d  extract files into exdir"
    never_overwrite_files: "never overwrite existing files         -q  quiet mode (-qq => quieter)"
    overwrite_files_files: "overwrite files WITHOUT prompting      -a  auto-convert any text files"
    junk_paths_make: "junk paths (do not make directories)   -aa treat ALL files as text"
    match_filenames_caseinsensitively: "match filenames case-insensitively     -L  make (some) names lowercase"
    restore_uidgid_info: "restore UID/GID info                   -V  retain VMS version numbers"
    keep_permissions_pipe: "keep setuid/setgid/tacky permissions   -M  pipe through \\\"more\\\" pager"
    opts: ""
    z: ""
    modifiers: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}