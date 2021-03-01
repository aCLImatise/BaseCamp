version 1.0

task Rapidnj {
  input {
    Boolean? verbose
    String? input_format
    String? output_format
    String? evolution_model
    Boolean? memory_size
    Int? rapid_nj_mem
    Directory? rapid_nj_disk
    Int? cores
    String? bootstrap
    String? alignment_type
    Boolean? no_negative_length
    File? output_file
    String var_input
  }
  command <<<
    rapidnj \
      ~{var_input} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(evolution_model) then ("--evolution-model " +  '"' + evolution_model + '"') else ""} \
      ~{if (memory_size) then "--memory-size" else ""} \
      ~{if defined(rapid_nj_mem) then ("--rapidnj-mem " +  '"' + rapid_nj_mem + '"') else ""} \
      ~{if defined(rapid_nj_disk) then ("--rapidnj-disk " +  '"' + rapid_nj_disk + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(bootstrap) then ("--bootstrap " +  '"' + bootstrap + '"') else ""} \
      ~{if defined(alignment_type) then ("--alignment-type " +  '"' + alignment_type + '"') else ""} \
      ~{if (no_negative_length) then "--no-negative-length" else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "turn on verbose output."
    input_format: "Specifies the type of input. pd = distance\\nmatrix in phylip format, sth = multiple alignment in (single line) stockholm format.\\nfa = multiple alignment in (single line) FASTA format."
    output_format: "Specifies the type of output. t = phylogenetic tree in newick format\\n(default), m = distance matrix."
    evolution_model: "Specifies which sequence evolution method to use when computing\\ndistance estimates from multiple alignments. jc = juke cantor,\\nkim = Kimura's distance (default)."
    memory_size: "The maximum amount of memory which rapidNJ is allowed to use (in MB).\\nDefault is 90% of all available memory."
    rapid_nj_mem: "Force RapidNJ to use a memory efficient version of rapidNJ. The 'arg'\\nspecifies the percentage of a sorted distance matrix which should be\\nstored in memory (arg=10 means 10%)."
    rapid_nj_disk: "Force RapidNJ to use HDD caching where 'arg' is the directory used to\\nstore cached files."
    cores: "Number of cores to use for computating distance matrices from multiple\\nalignments. All available cores are used by default."
    bootstrap: "Compute bootstrap values using ARG samples. The output tree will be\\nannotated with the bootstrap values."
    alignment_type: "Force the input alignment to be treated as: p = protein alignment,\\nd = DNA alignment."
    no_negative_length: "Adjust for negative branch lengths."
    output_file: "Output the result to this file instead of stdout."
    var_input: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}