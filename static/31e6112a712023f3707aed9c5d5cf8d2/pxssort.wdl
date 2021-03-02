version 1.0

task Pxssort {
  input {
    File? seq_f
    Boolean? sort_by
    File? out_f
    Boolean? citation
  }
  command <<<
    pxssort \
      ~{if defined(seq_f) then ("--seqf " +  '"' + seq_f + '"') else ""} \
      ~{if (sort_by) then "--sortby" else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    seq_f: "input sequence file, STDIN otherwise"
    sort_by: "what to sort by: 1:id (default) 2:id rev\\n3:length (<)   4:length (>)"
    out_f: "output sequence file, STOUT otherwise"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}