version 1.0

task Anvigenphylogenomictree {
  input {
    File? output_file
    String? program
    String? f
    String clusters
  }
  command <<<
    anvi_gen_phylogenomic_tree \
      ~{clusters} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(program) then ("--program " +  '"' + program + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    output_file: "File path to store results."
    program: "Program name.\\n"
    f: ""
    clusters: "-f FASTA, --fasta-file FASTA\\nA FASTA-formatted input file"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}