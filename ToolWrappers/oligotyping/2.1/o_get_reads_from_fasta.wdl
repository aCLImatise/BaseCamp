version 1.0

task Ogetreadsfromfasta {
  input {
    Boolean? compare_up_to_the_first_space
  }
  command <<<
    o_get_reads_from_fasta \
      ~{if (compare_up_to_the_first_space) then "--compare-up-to-the-first-space" else ""}
  >>>
  parameter_meta {
    compare_up_to_the_first_space: "Compare IDs in the file only up to the first space in\\nthe IDs in the FASTA file\\n"
  }
  output {
    File out_stdout = stdout()
  }
}