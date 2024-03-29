version 1.0

task PhyluceAlignRemoveEmptyTaxa {
  input {
    Directory? alignments
    Directory? directory_store_resultingalignments
    String? input_format
    String? output_format
    String? verbosity
    File? log_path
    Int? cores
    String var_7
  }
  command <<<
    phyluce_align_remove_empty_taxa \
      ~{var_7} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(directory_store_resultingalignments) then ("--output " +  '"' + directory_store_resultingalignments + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignments: "The directory containing alignments to be screened.\\n(default: None)"
    directory_store_resultingalignments: "The directory in which to store the resulting\\nalignments. (default: None)"
    input_format: "The input alignment format (default: nexus)"
    output_format: "The input alignment format (default: nexus)"
    verbosity: "The logging level to use. (default: INFO)"
    log_path: "The path to a directory to hold logs. (default: None)"
    cores: "Process alignments in parallel using --cores for\\nalignment. This is the number of PHYSICAL CPUs.\\n(default: 1)\\n"
    var_7: "[--input-format {fasta,nexus,phylip,phylip-relaxed,clustal,emboss,stockholm}]"
  }
  output {
    File out_stdout = stdout()
  }
}