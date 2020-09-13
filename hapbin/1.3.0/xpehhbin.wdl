version 1.0

task Xpehhbin {
  input {
    Boolean? hapa
    Boolean? hap_b
    Boolean? map_file
    File? out
    Boolean? cut_off
    Boolean? min_maf
    Boolean? scale
    Boolean? bin
    Boolean? bin_om
    Boolean? max_extend
  }
  command <<<
    xpehhbin \
      ~{if (hapa) then "--hapA" else ""} \
      ~{if (hap_b) then "--hapB" else ""} \
      ~{if (map_file) then "--map" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (cut_off) then "--cutoff" else ""} \
      ~{if (min_maf) then "--minmaf" else ""} \
      ~{if (scale) then "--scale" else ""} \
      ~{if (bin) then "--bin" else ""} \
      ~{if (bin_om) then "--binom" else ""} \
      ~{if (max_extend) then "--max-extend" else ""}
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
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}