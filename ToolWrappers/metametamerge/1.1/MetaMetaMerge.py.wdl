version 1.0

task MetaMetaMergepy {
  input {
    Boolean? input_binning_files
    Boolean? database_profiles_same
    String? tool_identifier
    String? tool_method
    File? names_file
    File? nodes_file
    File? merged_file
    Int? bins
    Int? cut_off
    String? mode
    String? ranks
    File? output_file
    String? output_type
    Boolean? output_parsed_profiles
    Boolean? detailed
    Boolean? verbose
    String? input_files
  }
  command <<<
    MetaMetaMerge_py \
      ~{input_files} \
      ~{if (input_binning_files) then "-i" else ""} \
      ~{if (database_profiles_same) then "-d" else ""} \
      ~{if defined(tool_identifier) then ("--tool-identifier " +  '"' + tool_identifier + '"') else ""} \
      ~{if defined(tool_method) then ("--tool-method " +  '"' + tool_method + '"') else ""} \
      ~{if defined(names_file) then ("--names-file " +  '"' + names_file + '"') else ""} \
      ~{if defined(nodes_file) then ("--nodes-file " +  '"' + nodes_file + '"') else ""} \
      ~{if defined(merged_file) then ("--merged-file " +  '"' + merged_file + '"') else ""} \
      ~{if defined(bins) then ("--bins " +  '"' + bins + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(ranks) then ("--ranks " +  '"' + ranks + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if (output_parsed_profiles) then "--output-parsed-profiles" else ""} \
      ~{if (detailed) then "--detailed" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_binning_files: "[<input_files> [<input_files> ...]], --input-files [<input_files> [<input_files> ...]]\\nInput (binning or profiling) files. Bioboxes or tsv\\nformat (see README)"
    database_profiles_same: "[<database_profiles> [<database_profiles> ...]], --database-profiles [<database_profiles> [<database_profiles> ...]]\\nDatabase profiles on the same order of the input files\\n(see README)"
    tool_identifier: "Comma-separated identifiers on the same order of the\\ninput files"
    tool_method: "Comma-separated methods on the same order of the input\\nfiles (p -> profiling / b -> binning)"
    names_file: "names.dmp from the NCBI Taxonomy database"
    nodes_file: "nodes.dmp from the NCBI Taxonomy database"
    merged_file: "merged.dmp from the NCBI Taxonomy database"
    bins: "Number of bins. Default: 4"
    cut_off: "Minimum abundance/Maximum results for each taxonomic\\nlevel (0: off / 0-1: minimum relative abundance / >=1:\\nmaximum number of identifications). Default: 0.0001"
    mode: "Result mode (precise, very-precise, linear, sensitive,\\nvery-sensitive, no-cutoff). Default: linear"
    ranks: "Comma-separated list of ranks to be independently\\nmerged (superkingdom,phylum,class,order,family,genus,s\\npecies,all). Default: species"
    output_file: "Output file"
    output_type: "Output type (tsv, bioboxes). Default: bioboxes"
    output_parsed_profiles: "Output parsed and converted profiles for all input\\nfiles (without cutoff)"
    detailed: "Generate an additional detailed output with individual\\nnormalized abundances for each tool, where: 0 -> not\\nidentified but present in the database, -1 not present\\nin the database."
    verbose: "Verbose output log"
    input_files: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}