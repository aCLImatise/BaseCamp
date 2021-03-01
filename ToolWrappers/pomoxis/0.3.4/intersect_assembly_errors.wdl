version 1.0

task IntersectAssemblyErrors {
  input {
    Boolean? reference_be_file
    Boolean? fasta_input_assemblies
    Boolean? alignment_threads_default
    Directory? output_directory_default
  }
  command <<<
    intersect_assembly_errors \
      ~{if (reference_be_file) then "-r" else ""} \
      ~{if (fasta_input_assemblies) then "-i" else ""} \
      ~{if (alignment_threads_default) then "-t" else ""} \
      ~{if (output_directory_default) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_be_file: "reference, should be a fasta file. If correspondng bwa indices\\ndo not exist they will be created. (required)."
    fasta_input_assemblies: "fasta input assemblies (required)."
    alignment_threads_default: "alignment threads (default: 1)."
    output_directory_default: "output directory (default: compare_assm)."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_default = "${in_output_directory_default}"
  }
}