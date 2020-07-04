version 1.0

task ScatterRegions {
  input {
    String? prefix
    Boolean? split_contigs
    Boolean? print_paths
    String? scatter_size
    String input_file_file
  }
  command <<<
    scatter-regions \
      ~{input_file_file} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--split-contigs" false="" split_contigs} \
      ~{true="--print-paths" false="" print_paths} \
      ~{if defined(scatter_size) then ("--scatter-size " +  '"' + scatter_size + '"') else ""}
  >>>
  parameter_meta {
    prefix: "The prefix of the ouput files. Output will be named like: <PREFIX><N>.bed, in which N is an incrementing number. Default 'scatter-'."
    split_contigs: "If set, contigs are allowed to be split up over multiple files."
    print_paths: "If set prints paths of the output files to STDOUT. This makes the program usable in scripts and worfklows."
    scatter_size: "How large the regions over which to scatter should be. Default: 1000000000."
    input_file_file: "The input file, either a bed file or a sequence dict. Which format is used is detected by the extension: '.bed', '.fai' or '.dict'. This option is mandatory."
  }
}