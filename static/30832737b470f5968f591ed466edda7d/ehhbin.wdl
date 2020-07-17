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
      ~{true="--hap" false="" hap} \
      ~{true="--map" false="" map_file} \
      ~{true="--locus" false="" locus} \
      ~{true="--cutoff" false="" cut_off} \
      ~{true="--minmaf" false="" min_maf} \
      ~{true="--scale" false="" scale} \
      ~{true="--max-extend" false="" max_extend} \
      ~{true="--binom" false="" bin_om}
  >>>
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
}