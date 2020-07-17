version 1.0

task Cage {
  input {
    String cage
  }
  command <<<
    cage \
      ~{cage}
  >>>
  parameter_meta {
    cage: "{-o <VCF_output_file>|-s <SNP_input_db>} [-v] [--] [--version] [-h] <contig> <start> <end> <stepsize> <beta> <cage_output_file>"
  }
}