version 1.0

task Xpehhbin {
  input {
    Boolean? hapa
    Boolean? hap_b
    Boolean? map_file
    Boolean? out
    Boolean? cut_off
    Boolean? min_maf
    Boolean? scale
    Boolean? bin
    Boolean? bin_om
    Boolean? max_extend
  }
  command <<<
    xpehhbin \
      ~{true="--hapA" false="" hapa} \
      ~{true="--hapB" false="" hap_b} \
      ~{true="--map" false="" map_file} \
      ~{true="--out" false="" out} \
      ~{true="--cutoff" false="" cut_off} \
      ~{true="--minmaf" false="" min_maf} \
      ~{true="--scale" false="" scale} \
      ~{true="--bin" false="" bin} \
      ~{true="--binom" false="" bin_om} \
      ~{true="--max-extend" false="" max_extend}
  >>>
  parameter_meta {
    hapa: "Hap file for population A"
    hap_b: "Hap file for population B"
    map_file: "Map file"
    out: "Output file"
    cut_off: "EHH cutoff value (default: 0.05)"
    min_maf: "Minimum allele frequency (default: 0.05)"
    scale: "Gap scale parameter in bp, used to scale gaps > scale parameter as in Voight, et al."
    bin: "Number of frequency bins for iHS normalization (default: 50)"
    bin_om: "Use binomial coefficients rather than frequency squared for EHH"
    max_extend: "Maximum distance in bp to traverse when calculating EHH (default: 0 (disabled))"
  }
}