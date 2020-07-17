version 1.0

task TOBIASScoreBigwig {
  input {
    String? signal
    String? full_path_output
    String? regions
    String? score
    Boolean? absolute
    Int? extend
    Int? smooth
    Float? min_limit
    Float? max_limit
    Int? fp_min
    Int? fp_max
    Int? flank_min
    Int? flank_max
    Int? window
    Int? cores
    Int? split
    Int? verbosity
    String score_bigwig
  }
  command <<<
    TOBIAS ScoreBigwig \
      ~{score_bigwig} \
      ~{if defined(signal) then ("--signal " +  '"' + signal + '"') else ""} \
      ~{if defined(full_path_output) then ("--output " +  '"' + full_path_output + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(score) then ("--score " +  '"' + score + '"') else ""} \
      ~{true="--absolute" false="" absolute} \
      ~{if defined(extend) then ("--extend " +  '"' + extend + '"') else ""} \
      ~{if defined(smooth) then ("--smooth " +  '"' + smooth + '"') else ""} \
      ~{if defined(min_limit) then ("--min-limit " +  '"' + min_limit + '"') else ""} \
      ~{if defined(max_limit) then ("--max-limit " +  '"' + max_limit + '"') else ""} \
      ~{if defined(fp_min) then ("--fp-min " +  '"' + fp_min + '"') else ""} \
      ~{if defined(fp_max) then ("--fp-max " +  '"' + fp_max + '"') else ""} \
      ~{if defined(flank_min) then ("--flank-min " +  '"' + flank_min + '"') else ""} \
      ~{if defined(flank_max) then ("--flank-max " +  '"' + flank_max + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    signal: "A .bw file of ATAC-seq cutsite signal"
    full_path_output: "Full path to output bigwig"
    regions: "Genomic regions to run footprinting within"
    score: "Type of scoring to perform on cutsites (footprint/sum/mean/none) (default: footprint)"
    absolute: "Convert bigwig signal to absolute values before calculating score"
    extend: "Extend input regions with bp (default: 100)"
    smooth: "Smooth output signal by mean in <bp> windows (default: no smoothing)"
    min_limit: "Limit input bigwig value range (default: no lower limit)"
    max_limit: "Limit input bigwig value range (default: no upper limit)"
    fp_min: "Minimum footprint width (default: 20)"
    fp_max: "Maximum footprint width (default: 50)"
    flank_min: "Minimum range of flanking regions (default: 10)"
    flank_max: "Maximum range of flanking regions (default: 30)"
    window: "The window for calculation of sum (default: 100)"
    cores: "Number of cores to use for computation (default: 1)"
    split: "Split of multiprocessing jobs (default: 100)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats, 4: debug, 5: spam) (default: 3)"
    score_bigwig: ""
  }
}