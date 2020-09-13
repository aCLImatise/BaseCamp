version 1.0

task FastaToFastq {
  input {
    String? qv
  }
  command <<<
    fasta_to_fastq \
      ~{if defined(qv) then ("-qv " +  '"' + qv + '"') else ""}
  >>>
  parameter_meta {
    qv: ": Assign this as the fake quality values (default: '^')"
  }
  output {
    File out_stdout = stdout()
  }
}