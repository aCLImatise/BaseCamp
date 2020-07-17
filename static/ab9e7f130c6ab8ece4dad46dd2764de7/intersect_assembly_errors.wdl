version 1.0

task IntersectAssemblyErrors {
  input {
    Boolean? reference_should_fasta
    Boolean? fasta_input_assemblies
    Boolean? alignment_threads_default
    Boolean? output_directory_default
  }
  command <<<
    intersect_assembly_errors \
      ~{true="-r" false="" reference_should_fasta} \
      ~{true="-i" false="" fasta_input_assemblies} \
      ~{true="-t" false="" alignment_threads_default} \
      ~{true="-o" false="" output_directory_default}
  >>>
  parameter_meta {
    reference_should_fasta: "reference, should be a fasta file. If correspondng bwa indices do not exist they will be created. (required)."
    fasta_input_assemblies: "fasta input assemblies (required)."
    alignment_threads_default: "alignment threads (default: 1)."
    output_directory_default: "output directory (default: compare_assm)."
  }
}