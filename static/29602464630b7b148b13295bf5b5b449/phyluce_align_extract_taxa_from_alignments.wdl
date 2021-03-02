version 1.0

task PhyluceAlignExtractTaxaFromAlignments {
  input {
    Directory? alignments
    Directory? directory_store_files
    String? input_format
    String? output_format
    String? verbosity
    File? log_path
    Int? cores
    Boolean? skip_check
    Array[String] exclude
    Array[String] include
  }
  command <<<
    phyluce_align_extract_taxa_from_alignments \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(directory_store_files) then ("--output " +  '"' + directory_store_files + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (skip_check) then "--skip-check" else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignments: "The input directory containing nexus files"
    directory_store_files: "The directory in which to store the output files"
    input_format: "The input format of the alignments"
    output_format: "The input alignment format"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
    cores: "Process alignments in parallel using --cores for\\nalignment. This is the number of PHYSICAL CPUs."
    skip_check: "Skip the initial taxon determination"
    exclude: "Taxa to exclude"
    include: "Taxa to include\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_store_files = "${in_directory_store_files}"
  }
}