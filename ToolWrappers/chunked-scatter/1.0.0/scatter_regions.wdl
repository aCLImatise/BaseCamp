version 1.0

task Scatterregions {
  input {
    Int? prefix
    Boolean? split_contigs
    Boolean? print_paths
    Int? scatter_size
    String input_file_detected
  }
  command <<<
    scatter_regions \
      ~{input_file_detected} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (split_contigs) then "--split-contigs" else ""} \
      ~{if (print_paths) then "--print-paths" else ""} \
      ~{if defined(scatter_size) then ("--scatter-size " +  '"' + scatter_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix: "The prefix of the ouput files. Output will be named\\nlike: <PREFIX><N>.bed, in which N is an incrementing\\nnumber. Default 'scatter-'."
    split_contigs: "If set, contigs are allowed to be split up over\\nmultiple files."
    print_paths: "If set prints paths of the output files to STDOUT.\\nThis makes the program usable in scripts and\\nworfklows."
    scatter_size: "The maximum size for the regions over which to\\nscatter. If contigs are not split, and a contig is\\nbigger than the maximum size, the contig will be\\nplaced in its own file. Default: 1000000000.\\n"
    input_file_detected: "The input file. The format is detected by the\\nextension. Supported extensions are: '.bed', '.dict',\\n'.fai', '.vcf', '.vcf.gz', '.bcf'."
  }
  output {
    File out_stdout = stdout()
  }
}