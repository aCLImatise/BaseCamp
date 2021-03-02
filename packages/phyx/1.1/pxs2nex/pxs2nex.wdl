version 1.0

task Pxs2nex {
  input {
    File? seq_f
    File? out_f
    Boolean? uppercase
    Boolean? citation
  }
  command <<<
    pxs2nex \
      ~{if defined(seq_f) then ("--seqf " +  '"' + seq_f + '"') else ""} \
      ~{if defined(out_f) then ("--outf " +  '"' + out_f + '"') else ""} \
      ~{if (uppercase) then "--uppercase" else ""} \
      ~{if (citation) then "--citation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phyx:1.1--h937addc_0"
  }
  parameter_meta {
    seq_f: "input sequence file, STDIN otherwise"
    out_f: "output sequence file, STOUT otherwise"
    uppercase: "export characters in uppercase"
    citation: "display phyx citation and exit"
  }
  output {
    File out_stdout = stdout()
    File out_out_f = "${in_out_f}"
  }
}