version 1.0

task FilterTADsAndLoopspl {
  input {
    String? def_out
    Int? loop
    Int? tad
    Int? used_calculate_coverage
    Boolean? cpu
    String? genome
    String? bad_chr
    Boolean? res
    Boolean? mint_a_dir
    Boolean? min_loop_score
    Boolean? min_coverage_tad
    Boolean? min_coverage_anchor
  }
  command <<<
    filterTADsAndLoops_pl \
      ~{if defined(def_out) then ("-o " +  '"' + def_out + '"') else ""} \
      ~{if defined(loop) then ("-loop " +  '"' + loop + '"') else ""} \
      ~{if defined(tad) then ("-tad " +  '"' + tad + '"') else ""} \
      ~{if defined(used_calculate_coverage) then ("-d " +  '"' + used_calculate_coverage + '"') else ""} \
      ~{if (cpu) then "-cpu" else ""} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if defined(bad_chr) then ("-badChr " +  '"' + bad_chr + '"') else ""} \
      ~{if (res) then "-res" else ""} \
      ~{if (mint_a_dir) then "-minTADir" else ""} \
      ~{if (min_loop_score) then "-minLoopScore" else ""} \
      ~{if (min_coverage_tad) then "-minCoverageTAD" else ""} \
      ~{if (min_coverage_anchor) then "-minCoverageAnchor" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    def_out: "(def: out)"
    loop: "(input loop file, 2D BED format)"
    tad: "(input TAD file, 2D BED format)"
    used_calculate_coverage: "[tagdir2] ... (Used to calculate experiment coverage)"
    cpu: "<#> (number of processes to use to count reads in multiple tagdirs at once)"
    genome: "(genome version, def: none)"
    bad_chr: "[chr] ... (chromosomes to skip e.g. chrY, def: none)"
    res: "<#> (resolution for interaction/region overlap, def: 15000)"
    mint_a_dir: "<#> (minimum TAD inclusion ratio, def: 0)"
    min_loop_score: "<#> (minimum int score, def: 0)"
    min_coverage_tad: "<#> (minimum TAD coverage ratio relative to average, def: 0.25)"
    min_coverage_anchor: "<#> (minimum int coverage ratio relative to average, def: 0.25)"
  }
  output {
    File out_stdout = stdout()
  }
}