version 1.0

task BuildTaxdb {
  input {
    String with
    String two
    String or
    String three
    String arguments
  }
  command <<<
    build_taxdb \
      ~{with} \
      ~{two} \
      ~{or} \
      ~{three} \
      ~{arguments}
  >>>
  parameter_meta {
    with: ""
    two: ""
    or: ""
    three: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}