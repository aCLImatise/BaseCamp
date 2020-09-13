version 1.0

task ParaFetch {
  input {
    Boolean? newer
    Boolean? progress
    String n
    String out_path
    String where
    String r
    String url
    String is
    String optional_dot
    String var_if
    String the
    String not
    Int number
    String of
    String specified
    String connections
    String to
    String use
  }
  command <<<
    paraFetch \
      ~{n} \
      ~{out_path} \
      ~{where} \
      ~{r} \
      ~{url} \
      ~{is} \
      ~{optional_dot} \
      ~{var_if} \
      ~{the} \
      ~{not} \
      ~{number} \
      ~{of} \
      ~{specified} \
      ~{connections} \
      ~{to} \
      ~{use} \
      ~{if (newer) then "-newer" else ""} \
      ~{if (progress) then "-progress" else ""}
  >>>
  parameter_meta {
    newer: "only download a file if it is newer than the version we already have."
    progress: "Show progress of download."
    n: ""
    out_path: ""
    where: ""
    r: ""
    url: ""
    is: ""
    optional_dot: ""
    var_if: ""
    the: ""
    not: ""
    number: ""
    of: ""
    specified: ""
    connections: ""
    to: ""
    use: ""
  }
  output {
    File out_stdout = stdout()
  }
}