version 1.0

task Patholive {
  input {
    String? bcl_dir
    String? index
    String? reads
    String? out_cycles
    String? out_dir
    Int? max_soft_clip_ratio
    String? hi_live
    String? num_threads
    String? align_mode
    String? out_mode
    String? out_format
    Boolean? verbose
    String? lanes
    String? tiles
    Int? max_tile
    String? config
  }
  command <<<
    patholive \
      ~{if defined(bcl_dir) then ("--bcl_dir " +  '"' + bcl_dir + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(out_cycles) then ("--out_cycles " +  '"' + out_cycles + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(max_soft_clip_ratio) then ("--max_softclip_ratio " +  '"' + max_soft_clip_ratio + '"') else ""} \
      ~{if defined(hi_live) then ("--hilive " +  '"' + hi_live + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(align_mode) then ("--align_mode " +  '"' + align_mode + '"') else ""} \
      ~{if defined(out_mode) then ("--out_mode " +  '"' + out_mode + '"') else ""} \
      ~{if defined(out_format) then ("--out_format " +  '"' + out_format + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(lanes) then ("--lanes " +  '"' + lanes + '"') else ""} \
      ~{if defined(tiles) then ("--tiles " +  '"' + tiles + '"') else ""} \
      ~{if defined(max_tile) then ("--max_tile " +  '"' + max_tile + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  parameter_meta {
    bcl_dir: "Illumina BaseCalls directory which contains the sequence information of the reads."
    index: "Reference index directory for HiLive2."
    reads: "Length and types of the read segments. Each segment is either a read (R) or a barcode (B). Please give the segments in the correct order as they are produced by the sequencing machine. [Example: 101R,8B,8B,101R]"
    out_cycles: "Cycles to create output for."
    out_dir: "Output directory."
    max_soft_clip_ratio: "Maximal relative length of the front softclip (only relevant during output) [Default: 0.2]"
    hi_live: "Path to hilive executable"
    num_threads: "Number of threads"
    align_mode: "Alignment mode to balance speed and accuracy [very- fast|fast|balanced|accurate|very-accurate]."
    out_mode: "The output mode. [Default: ANYBEST]. [ALL|A]: Report all found alignments. [BESTN#|N#]: Report the # best found alignments. [ALLBEST|H]: Report all found alignments with the best score. [ANYBEST|B]: Report one best alignment. [UNIQUE|U]: Report only unique alignments."
    out_format: "Set the output format [Default: BAM]. [SAM]: SAM output. [BAM]: BAM output."
    verbose: "Print output of HiLive. Default: False"
    lanes: "Lanes to be used for mapping, [Default = automatic detection]"
    tiles: "Number of tiles [Default: automatic detection]"
    max_tile: "Specify the highest tile number. The tile numbers will be computed by this number, considering the correct surface count, swath count and tile count for Illumina sequencing."
    config: "Path to a config file for HiLive2. This enables to use advanced alignment settings that can not be set with the available PathoLive parameters."
  }
}