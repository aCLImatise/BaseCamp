version 1.0

task IntersectAssemblyErrors {
  input {
    Boolean? reference_should_fasta
    Boolean? fasta_assemblies_required
    Boolean? alignment_threads_default
    Directory? output_directory_default
  }
  command <<<
    intersect_assembly_errors \
      ~{if (reference_should_fasta) then "-r" else ""} \
      ~{if (fasta_assemblies_required) then "-i" else ""} \
      ~{if (alignment_threads_default) then "-t" else ""} \
      ~{if (output_directory_default) then "-o" else ""}
  >>>
  parameter_meta {
    reference_should_fasta: "reference, should be a fasta file. If correspondng bwa indices\\ndo not exist they will be created. (required)."
    fasta_assemblies_required: "fasta input assemblies (required)."
    alignment_threads_default: "alignment threads (default: 1)."
    output_directory_default: "output directory (default: compare_assm)."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}