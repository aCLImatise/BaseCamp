version 1.0

task AnviGenPhylogenomicTree {
  input {
    String? fast_a_file
    File? output_file
    String? program
  }
  command <<<
    anvi-gen-phylogenomic-tree \
      ~{if defined(fast_a_file) then ("--fasta-file " +  '"' + fast_a_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(program) then ("--program " +  '"' + program + '"') else ""}
  >>>
  parameter_meta {
    fast_a_file: "A FASTA-formatted input file"
    output_file: "File path to store results."
    program: "Program name."
  }
}