version 1.0

task ParaSync {
  input {
    Boolean? means_accept_files
    Boolean? newer
    Boolean? progress
    String where
    String n
    String is
    String the
    Int number
    String of
    String connections
    String to
    String use
  }
  command <<<
    paraSync \
      ~{where} \
      ~{n} \
      ~{is} \
      ~{the} \
      ~{number} \
      ~{of} \
      ~{connections} \
      ~{to} \
      ~{use} \
      ~{if (means_accept_files) then "-A" else ""} \
      ~{if (newer) then "-newer" else ""} \
      ~{if (progress) then "-progress" else ""}
  >>>
  parameter_meta {
    means_accept_files: "='ext1,ext2'  means accept only files with ext1 or ext2"
    newer: "only download a file if it is newer than the version we already have."
    progress: "Show progress of download."
    where: ""
    n: ""
    is: ""
    the: ""
    number: ""
    of: ""
    connections: ""
    to: ""
    use: ""
  }
  output {
    File out_stdout = stdout()
  }
}