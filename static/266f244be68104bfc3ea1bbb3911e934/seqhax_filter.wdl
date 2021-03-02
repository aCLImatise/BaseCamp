version 1.0

task SeqhaxFilter {
  input {
    Int? minimum_length_read
    Boolean? output_fasta_qualities
    Boolean? paired_mode_reads
  }
  command <<<
    seqhax filter \
      ~{if defined(minimum_length_read) then ("-l " +  '"' + minimum_length_read + '"') else ""} \
      ~{if (output_fasta_qualities) then "-f" else ""} \
      ~{if (paired_mode_reads) then "-p" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    minimum_length_read: "Minimum length of each read. [default 1]"
    output_fasta_qualities: "Output as fasta (no qualities)"
    paired_mode_reads: "Paired mode: reads are kept/discared in pairs"
  }
  output {
    File out_stdout = stdout()
  }
}