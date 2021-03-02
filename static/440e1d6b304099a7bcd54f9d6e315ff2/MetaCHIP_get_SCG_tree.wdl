version 1.0

task MetaCHIPGetSCGTree {
  input {
    Directory? input_genome_folder
    String? output_prefix
    File? file_extension
    Boolean? non_meta
    Int? number_threads_default
  }
  command <<<
    MetaCHIP get_SCG_tree \
      ~{if defined(input_genome_folder) then ("-i " +  '"' + input_genome_folder + '"') else ""} \
      ~{if defined(output_prefix) then ("-p " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(file_extension) then ("-x " +  '"' + file_extension + '"') else ""} \
      ~{if (non_meta) then "-nonmeta" else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metachip:1.10.3--pyh3252c3a_0"
  }
  parameter_meta {
    input_genome_folder: "input genome folder"
    output_prefix: "output prefix"
    file_extension: "file extension"
    non_meta: "annotate Non-metagenome-assembled genomes (Non-MAGs)"
    number_threads_default: "number of threads, default: 1"
  }
  output {
    File out_stdout = stdout()
  }
}