version 1.0

task Ehhbin {
  input {
    Boolean? hap
    Boolean? map_file
    Boolean? locus
    Boolean? cut_off
    Boolean? min_maf
    Boolean? scale
    Boolean? max_extend
    Boolean? bin_om
  }
  command <<<
    ehhbin \
      ~{if (hap) then "--hap" else ""} \
      ~{if (map_file) then "--map" else ""} \
      ~{if (locus) then "--locus" else ""} \
      ~{if (cut_off) then "--cutoff" else ""} \
      ~{if (min_maf) then "--minmaf" else ""} \
      ~{if (scale) then "--scale" else ""} \
      ~{if (max_extend) then "--max-extend" else ""} \
      ~{if (bin_om) then "--binom" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hap: "Hap file"
    map_file: "Map file"
    locus: "Locus"
    cut_off: "EHH cutoff value (default: 0.05)"
    min_maf: "Minimum allele frequency (default: 0.05)"
    scale: "Gap scale parameter in bp, used to scale gaps > scale parameter as in Voight, et al."
    max_extend: "Maximum distance in bp to traverse when calculating EHH (default: 0 (disabled))"
    bin_om: "Use binomial coefficients rather than frequency squared for EHH"
  }
  output {
    File out_stdout = stdout()
  }
}