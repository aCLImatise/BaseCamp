version 1.0

task VariantCaller {
  input {
    Directory? _output_directory
    Boolean? default_pileup_phasing
    Boolean? default_alignment_window
    Boolean? ig
    Boolean? delta
    Boolean? ps
    Boolean? dt
    Boolean? cy
    Boolean? mp
    Boolean? qual
    Boolean? default_significance_value
    String variant_caller
  }
  command <<<
    variant_caller \
      ~{variant_caller} \
      ~{if (_output_directory) then "-o" else ""} \
      ~{if (default_pileup_phasing) then "-e" else ""} \
      ~{if (default_alignment_window) then "-w" else ""} \
      ~{if (ig) then "-ig" else ""} \
      ~{if (delta) then "-delta" else ""} \
      ~{if (ps) then "-ps" else ""} \
      ~{if (dt) then "-dt" else ""} \
      ~{if (cy) then "-cy" else ""} \
      ~{if (mp) then "-mp" else ""} \
      ~{if (qual) then "-qual" else ""} \
      ~{if (default_significance_value) then "-a" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _output_directory: "[output DIR] -- output directory"
    default_pileup_phasing: "[1 or 2] -- default 1; 1: pileup + phasing; 2: pileup"
    default_alignment_window: "-- default 500; alignment window size"
    ig: "-- default 0; # of bases to ignore on both end of a read"
    delta: "-- default 2; constrain PE distance by delta x fragsize_variation (auto measured by program)"
    ps: "(0, 100] -- default 30; percentage of reads to sample to get stats."
    dt: "[0 or 1] -- default 1; 1: dinucleotide for err prob measure; 0: not"
    cy: "[0 or 1] -- default 1; 1: read cycle for err calibr; 0: not"
    mp: "[0 or 1] -- default 1; 1: mate-pair for err calibr; 0: not"
    qual: "[0, 40] -- default 20; quantile of qual for err calibr"
    default_significance_value: "-- default 0.05; significance value for stat test"
    variant_caller: "-i  [input.bam] -- input sorted bam file"
  }
  output {
    File out_stdout = stdout()
    Directory out__output_directory = "${in__output_directory}"
  }
}