version 1.0

task DrDiscoIntegrate {
  input {
    String? gtf
    String? fast_a
    String table_input_file
    String table_output_file
  }
  command <<<
    dr-disco integrate \
      ~{table_input_file} \
      ~{table_output_file} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""}
  >>>
  parameter_meta {
    gtf: "Use gene annotation for estimating fusion genes and improve classification of exonic (GTF file)"
    fast_a: "Use reference sequences to estimate edit distances to splice junction motifs (FASTA file)"
    table_input_file: ""
    table_output_file: ""
  }
}