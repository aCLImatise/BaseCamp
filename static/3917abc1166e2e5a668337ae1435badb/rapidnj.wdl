version 1.0

task Rapidnj {
  input {
    Boolean? verbose
    String? input_format
    String? output_format
    String? evolution_model
    Boolean? memory_size
    String? rapid_nj_mem
    String? rapid_nj_disk
    String? cores
    String? bootstrap
    String? alignment_type
    Boolean? no_negative_length
    String? output_file
    String var_input
  }
  command <<<
    rapidnj \
      ~{var_input} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(evolution_model) then ("--evolution-model " +  '"' + evolution_model + '"') else ""} \
      ~{true="--memory-size" false="" memory_size} \
      ~{if defined(rapid_nj_mem) then ("--rapidnj-mem " +  '"' + rapid_nj_mem + '"') else ""} \
      ~{if defined(rapid_nj_disk) then ("--rapidnj-disk " +  '"' + rapid_nj_disk + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(bootstrap) then ("--bootstrap " +  '"' + bootstrap + '"') else ""} \
      ~{if defined(alignment_type) then ("--alignment-type " +  '"' + alignment_type + '"') else ""} \
      ~{true="--no-negative-length" false="" no_negative_length} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    verbose: "turn on verbose output."
    input_format: "Specifies the type of input. pd = distance matrix in phylip format, sth = multiple alignment in (single line) stockholm format. fa = multiple alignment in (single line) FASTA format."
    output_format: "Specifies the type of output. t = phylogenetic tree in newick format (default), m = distance matrix."
    evolution_model: "Specifies which sequence evolution method to use when computing distance estimates from multiple alignments. jc = juke cantor, kim = Kimura's distance (default)."
    memory_size: "The maximum amount of memory which rapidNJ is allowed to use (in MB). Default is 90% of all available memory."
    rapid_nj_mem: "Force RapidNJ to use a memory efficient version of rapidNJ. The 'arg' specifies the percentage of a sorted distance matrix which should be stored in memory (arg=10 means 10%)."
    rapid_nj_disk: "Force RapidNJ to use HDD caching where 'arg' is the directory used to store cached files."
    cores: "Number of cores to use for computating distance matrices from multiple alignments. All available cores are used by default."
    bootstrap: "Compute bootstrap values using ARG samples. The output tree will be annotated with the bootstrap values."
    alignment_type: "Force the input alignment to be treated as: p = protein alignment,  d = DNA alignment."
    no_negative_length: "Adjust for negative branch lengths."
    output_file: "Output the result to this file instead of stdout."
    var_input: ""
  }
}