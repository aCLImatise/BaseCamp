version 1.0

task Iprscan2gff3 {
  input {
    String ipr
    String this
    String be
    String iprs_can_dot_raw
    String added
    String domains
    String script
    String and
    String var_as
    String takes
    String a
    String an
    String builds
    String interpro_scan
    String them
    String track
    String into
    String raw
    String to
    String gbrowse
    Int gff_three
    String format
    String formated
    String report
    String features
    String with
    String that
  }
  command <<<
    iprscan2gff3 \
      ~{ipr} \
      ~{this} \
      ~{be} \
      ~{iprs_can_dot_raw} \
      ~{added} \
      ~{domains} \
      ~{script} \
      ~{and} \
      ~{var_as} \
      ~{takes} \
      ~{a} \
      ~{an} \
      ~{builds} \
      ~{interpro_scan} \
      ~{them} \
      ~{track} \
      ~{into} \
      ~{raw} \
      ~{to} \
      ~{gbrowse} \
      ~{gff_three} \
      ~{format} \
      ~{formated} \
      ~{report} \
      ~{features} \
      ~{with} \
      ~{that}
  >>>
  parameter_meta {
    ipr: ""
    this: ""
    be: ""
    iprs_can_dot_raw: ""
    added: ""
    domains: ""
    script: ""
    and: ""
    var_as: ""
    takes: ""
    a: ""
    an: ""
    builds: ""
    interpro_scan: ""
    them: ""
    track: ""
    into: ""
    raw: ""
    to: ""
    gbrowse: ""
    gff_three: ""
    format: ""
    formated: ""
    report: ""
    features: ""
    with: ""
    that: ""
  }
  output {
    File out_stdout = stdout()
  }
}