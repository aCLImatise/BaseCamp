version 1.0

task ParaSync {
  input {
    Boolean? means_accept_files
    Boolean? newer
    Boolean? progress
  }
  command <<<
    paraSync \
      ~{true="-A" false="" means_accept_files} \
      ~{true="-newer" false="" newer} \
      ~{true="-progress" false="" progress}
  >>>
  parameter_meta {
    means_accept_files: "='ext1,ext2'  means accept only files with ext1 or ext2"
    newer: "only download a file if it is newer than the version we already have."
    progress: "Show progress of download."
  }
}