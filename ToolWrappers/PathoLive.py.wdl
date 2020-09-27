version 1.0

task PathoLivepy {
  input {
    Directory? bcl_dir
    Directory? index
    Int? reads
    String? out_cycles
    Directory? out_dir
    Int? max_soft_clip_ratio
    File? hi_live
    Int? num_threads
    String? align_mode
    String? out_mode
    String? out_format
    Boolean? verbose
    String? lanes
    Int? tiles
    Int? max_tile
    File? config
  }
  command <<<
    PathoLive_py \
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
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(lanes) then ("--lanes " +  '"' + lanes + '"') else ""} \
      ~{if defined(tiles) then ("--tiles " +  '"' + tiles + '"') else ""} \
      ~{if defined(max_tile) then ("--max_tile " +  '"' + max_tile + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  parameter_meta {
    bcl_dir: "Illumina BaseCalls directory which contains the\\nsequence information of the reads."
    index: "Reference index directory for HiLive2."
    reads: "Length and types of the read segments. Each segment is\\neither a read (R) or a barcode (B). Please give the\\nsegments in the correct order as they are produced by\\nthe sequencing machine. [Example: 101R,8B,8B,101R]"
    out_cycles: "Cycles to create output for."
    out_dir: "Output directory."
    max_soft_clip_ratio: "Maximal relative length of the front softclip (only\\nrelevant during output) [Default: 0.2]"
    hi_live: "Path to hilive executable"
    num_threads: "Number of threads"
    align_mode: "Alignment mode to balance speed and accuracy [very-\\nfast|fast|balanced|accurate|very-accurate]."
    out_mode: "The output mode. [Default: ANYBEST]. [ALL|A]: Report\\nall found alignments. [BESTN#|N#]: Report the # best\\nfound alignments. [ALLBEST|H]: Report all found\\nalignments with the best score. [ANYBEST|B]: Report\\none best alignment. [UNIQUE|U]: Report only unique\\nalignments."
    out_format: "Set the output format [Default: BAM]. [SAM]: SAM\\noutput. [BAM]: BAM output."
    verbose: "Print output of HiLive. Default: False"
    lanes: "Lanes to be used for mapping, [Default = automatic\\ndetection]"
    tiles: "Number of tiles [Default: automatic detection]"
    max_tile: "Specify the highest tile number. The tile numbers will\\nbe computed by this number, considering the correct\\nsurface count, swath count and tile count for Illumina\\nsequencing."
    config: "Path to a config file for HiLive2. This enables to use\\nadvanced alignment settings that can not be set with\\nthe available PathoLive parameters.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}