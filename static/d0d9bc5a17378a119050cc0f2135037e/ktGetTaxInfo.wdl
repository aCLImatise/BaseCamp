version 1.0

task KtGetTaxInfo {
  input {
    String taxid
  }
  command <<<
    ktGetTaxInfo \
      ~{taxid}
  >>>
  runtime {
    docker: "quay.io/biocontainers/krona:2.8--pl526_0"
  }
  parameter_meta {
    taxid: "depth  parent  rank  name"
  }
  output {
    File out_stdout = stdout()
  }
}