version 1.0

task Ace2sam {
  input {
    Boolean? output_padded_sam
    Boolean? write_contig_sequence
    Boolean? pc
    String in_dot_ace
  }
  command <<<
    ace2sam \
      ~{in_dot_ace} \
      ~{if (output_padded_sam) then "-p" else ""} \
      ~{if (write_contig_sequence) then "-c" else ""} \
      ~{if (pc) then "-pc" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/samtools:1.12--hd5e65b6_0"
  }
  parameter_meta {
    output_padded_sam: "output padded SAM"
    write_contig_sequence: "write the contig sequence in SAM"
    pc: ""
    in_dot_ace: ""
  }
  output {
    File out_stdout = stdout()
  }
}