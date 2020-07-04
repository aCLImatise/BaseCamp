version 1.0

task FilterTADsAndCPs.pl {
  input {
    String? def_out
    String? cp
    String? tad
    String? used_calculate_coverage
    Boolean? cpu
    String? bad_chr
    Boolean? res
    Boolean? mint_a_dir
    Boolean? mint_ad_cov
    Boolean? min_cp_score
    Boolean? min_cp_cov
  }
  command <<<
    filterTADsAndCPs.pl \
      ~{if defined(def_out) then ("-o " +  '"' + def_out + '"') else ""} \
      ~{if defined(cp) then ("-cp " +  '"' + cp + '"') else ""} \
      ~{if defined(tad) then ("-tad " +  '"' + tad + '"') else ""} \
      ~{if defined(used_calculate_coverage) then ("-d " +  '"' + used_calculate_coverage + '"') else ""} \
      ~{true="-cpu" false="" cpu} \
      ~{if defined(bad_chr) then ("-badChr " +  '"' + bad_chr + '"') else ""} \
      ~{true="-res" false="" res} \
      ~{true="-minTADir" false="" mint_a_dir} \
      ~{true="-minTADcov" false="" mint_ad_cov} \
      ~{true="-minCPscore" false="" min_cp_score} \
      ~{true="-minCPcov" false="" min_cp_cov}
  >>>
  parameter_meta {
    def_out: "(def: out)"
    cp: "(input contact point file, 2D BED format"
    tad: "(input TAD file, 2D BED format"
    used_calculate_coverage: "[tagdir2] ... (Used to calculate experiment coverage)"
    cpu: "<#> (number of processes to use to count reads in mult. tagdirs at once)]n         -genome <genome version> (genome version, def: none)"
    bad_chr: "[chr] ... (chromosomes to skip e.g. chrY, def: none)"
    res: "<#> (resolution for interaction/region overlap, def: 15000)"
    mint_a_dir: "<#> (minimum TAD inclusion ratio, def: 0)"
    mint_ad_cov: "<#> (minimum TAD coverage ratio relative to average, def: 0.25)"
    min_cp_score: "<#> (minimum int score, def: 0)"
    min_cp_cov: "<#> (minimum int coverage ratio relative to average, def: 0.25)"
  }
}