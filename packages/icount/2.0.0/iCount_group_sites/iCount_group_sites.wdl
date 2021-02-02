version 1.0

task ICountGroupSites {
  input {
    Boolean? m
    Boolean? p
    Boolean? f
    Boolean? s
    String i_count
    String group
    String sites_grouped
    String? sites
  }
  command <<<
    iCount group sites \
      ~{i_count} \
      ~{group} \
      ~{sites_grouped} \
      ~{sites} \
      ~{if (m) then "-M" else ""} \
      ~{if (p) then "-P" else ""} \
      ~{if (f) then "-F" else ""} \
      ~{if (s) then "-S" else ""}
  >>>
  parameter_meta {
    m: ""
    p: ""
    f: ""
    s: ""
    i_count: ""
    group: ""
    sites_grouped: ""
    sites: ""
  }
  output {
    File out_stdout = stdout()
  }
}