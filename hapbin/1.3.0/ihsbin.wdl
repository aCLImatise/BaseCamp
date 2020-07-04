version 1.0

task Ihsbin {
  input {
    Boolean? hap
    Boolean? map_file
    Boolean? out
    Boolean? cut_off
    Boolean? min_maf
    Boolean? scale
    Boolean? bin
    Boolean? max_extend
    Boolean? bin_om
    Boolean? ascii
  }
  command <<<
    ihsbin \
      ~{true="--hap" false="" hap} \
      ~{true="--map" false="" map_file} \
      ~{true="--out" false="" out} \
      ~{true="--cutoff" false="" cut_off} \
      ~{true="--minmaf" false="" min_maf} \
      ~{true="--scale" false="" scale} \
      ~{true="--bin" false="" bin} \
      ~{true="--max-extend" false="" max_extend} \
      ~{true="--binom" false="" bin_om} \
      ~{true="--ascii" false="" ascii}
  >>>
  parameter_meta {
    hap: "Hap file"
    map_file: "Map file"
    out: "Output file"
    cut_off: "EHH cutoff value (default: 0.05)"
    min_maf: "Minimum allele frequency (default: 0.05)"
    scale: "Gap scale parameter in bp, used to scale gaps > scale parameter as in Voight, et al."
    bin: "Number of frequency bins for iHS normalization (default: 50)"
    max_extend: "Maximum distance in bp to traverse when calculating EHH (default: 0 (disabled))"
    bin_om: "Use binomial coefficients rather than frequency squared for EHH"
    ascii: ""
  }
}