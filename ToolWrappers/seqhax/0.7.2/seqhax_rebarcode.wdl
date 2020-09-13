version 1.0

task SeqhaxRebarcode {
  input {
    File? output_interleaved_reads
    Int r_one
  }
  command <<<
    seqhax rebarcode \
      ~{r_one} \
      ~{if defined(output_interleaved_reads) then ("-o " +  '"' + output_interleaved_reads + '"') else ""}
  >>>
  parameter_meta {
    output_interleaved_reads: "Output interleaved reads to FILE. Use - for stdout. (default: no output)"
    r_one: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_interleaved_reads = "${in_output_interleaved_reads}"
  }
}