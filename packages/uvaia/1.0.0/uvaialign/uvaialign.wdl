version 1.0

task Uvaialign {
  input {
    String? reference
  }
  command <<<
    uvaialign \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/uvaia:1.0.0--hbcae180_0"
  }
  parameter_meta {
    reference: "reference sequence"
  }
  output {
    File out_stdout = stdout()
  }
}