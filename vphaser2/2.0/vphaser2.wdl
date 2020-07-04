version 1.0

task Vphaser2 {
  input {
    Boolean? _input_sorted
    Boolean? _output_directory
    Boolean? _default_pileup
    Boolean? _default_alignment
    Boolean? ig
    Boolean? delta
    Boolean? ps
    Boolean? dt
    Boolean? cy
    Boolean? mp
    Boolean? qual
    Boolean? _default_significance
  }
  command <<<
    vphaser2 \
      ~{true="-i" false="" _input_sorted} \
      ~{true="-o" false="" _output_directory} \
      ~{true="-e" false="" _default_pileup} \
      ~{true="-w" false="" _default_alignment} \
      ~{true="-ig" false="" ig} \
      ~{true="-delta" false="" delta} \
      ~{true="-ps" false="" ps} \
      ~{true="-dt" false="" dt} \
      ~{true="-cy" false="" cy} \
      ~{true="-mp" false="" mp} \
      ~{true="-qual" false="" qual} \
      ~{true="-a" false="" _default_significance}
  >>>
  parameter_meta {
    _input_sorted: "[input.bam] -- input sorted bam file"
    _output_directory: "[output DIR] -- output directory"
    _default_pileup: "[1 or 2] -- default 1; 1: pileup + phasing; 2: pileup"
    _default_alignment: "-- default 500; alignment window size"
    ig: "-- default 0; # of bases to ignore on both end of a read"
    delta: "-- default 2; constrain PE distance by delta x fragsize_variation (auto measured by program)"
    ps: "(0, 100] -- default 30; percentage of reads to sample to get stats."
    dt: "[0 or 1] -- default 1; 1: dinucleotide for err prob measure; 0: not"
    cy: "[0 or 1] -- default 1; 1: read cycle for err calibr; 0: not"
    mp: "[0 or 1] -- default 1; 1: mate-pair for err calibr; 0: not"
    qual: "[0, 40] -- default 20; quantile of qual for err calibr"
    _default_significance: "-- default 0.05; significance value for stat test"
  }
}