version 1.0

task Chunkedscatter {
  input {
    Int? prefix
    Boolean? split_contigs
    Boolean? print_paths
    Int? chunk_size
    File? minimum_bp_per_file
    Int? overlap
  }
  command <<<
    chunked_scatter \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (split_contigs) then "--split-contigs" else ""} \
      ~{if (print_paths) then "--print-paths" else ""} \
      ~{if defined(chunk_size) then ("--chunk-size " +  '"' + chunk_size + '"') else ""} \
      ~{if defined(minimum_bp_per_file) then ("--minimum-bp-per-file " +  '"' + minimum_bp_per_file + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    prefix: "The prefix of the ouput files. Output will be named\\nlike: <PREFIX><N>.bed, in which N is an incrementing\\nnumber. Default 'scatter-'."
    split_contigs: "If set, contigs are allowed to be split up over\\nmultiple files."
    print_paths: "If set prints paths of the output files to STDOUT.\\nThis makes the program usable in scripts and\\nworfklows."
    chunk_size: "The size of the chunks. The first chunk in a region or\\ncontig will be exactly length SIZE, subsequent chunks\\nwill SIZE + OVERLAP and the final chunk may be\\nanywhere from 0.5 to 1.5 times SIZE plus overlap. If a\\nregion (or contig) is smaller than SIZE the original\\nregions will be returned. Defaults to 1e6"
    minimum_bp_per_file: "The minimum number of bases represented within a\\nsingle output bed file. If an input contig or region\\nis smaller than this MINIMUM_BP_PER_FILE, then the\\nnext contigs/regions will be placed in the same file\\nuntill this minimum is met. Defaults to 45e6."
    overlap: "The number of bases which each chunk should overlap\\nwith the preceding one. Defaults to 150.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}