version 1.0

task ExonUtils {
  input {
    String to
    String fetch
    String constitutive
    String exons
    String from
    String gff
  }
  command <<<
    exon_utils \
      ~{to} \
      ~{fetch} \
      ~{constitutive} \
      ~{exons} \
      ~{from} \
      ~{gff}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    to: ""
    fetch: ""
    constitutive: ""
    exons: ""
    from: ""
    gff: ""
  }
  output {
    File out_stdout = stdout()
  }
}