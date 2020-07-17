version 1.0

task ChunkedScatter {
  input {
    String? prefix
    Boolean? split_contigs
    Boolean? print_paths
    Int? chunk_size
    Int? minimum_bp_per_file
    String? overlap
    String input_file_file
  }
  command <<<
    chunked-scatter \
      ~{input_file_file} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{true="--split-contigs" false="" split_contigs} \
      ~{true="--print-paths" false="" print_paths} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(minimum_bp_per_file) then ("--minimum-bp-per-file " +  '"' + minimum_bp_per_file + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""}
  >>>
  parameter_meta {
    prefix: "The prefix of the ouput files. Output will be named like: <PREFIX><N>.bed, in which N is an incrementing number. Default 'scatter-'."
    split_contigs: "If set, contigs are allowed to be split up over multiple files."
    print_paths: "If set prints paths of the output files to STDOUT. This makes the program usable in scripts and worfklows."
    chunk_size: "The size of the chunks. The first chunk in a region or contig will be exactly length SIZE, subsequent chunks will SIZE + OVERLAP and the final chunk may be anywhere from 0.5 to 1.5 times SIZE plus overlap. If a region (or contig) is smaller than SIZE the original regions will be returned. Defaults to 1e6"
    minimum_bp_per_file: "The minimum number of bases represented within a single output bed file. If an input contig or region is smaller than this MINIMUM_BP_PER_FILE, then the next contigs/regions will be placed in the same file untill this minimum is met. Defaults to 45e6."
    overlap: "The number of bases which each chunk should overlap with the preceding one. Defaults to 150."
    input_file_file: "The input file, either a bed file or a sequence dict. Which format is used is detected by the extension: '.bed', '.fai' or '.dict'. This option is mandatory."
  }
}