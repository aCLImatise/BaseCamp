version 1.0

task AsmQC {
  input {
    Boolean? bank
    Boolean? sc_aff
    Boolean? feat
    Boolean? recompute
    Boolean? update
    File? per_insert
    Int? min_obs
    Int? num_sd
    String? good_cvg
    Boolean? cest_at
    String? short_cvg
    String? long_cvg
    String? same_cvg
    String? out_iec_vg
    String? linking
    String? single_mate
    String? me_a_change
    String? sd_change
    File? ce_plot
    Boolean? debug
  }
  command <<<
    asmQC \
      ~{if (bank) then "-bank" else ""} \
      ~{if (sc_aff) then "-scaff" else ""} \
      ~{if (feat) then "-feat" else ""} \
      ~{if (recompute) then "-recompute" else ""} \
      ~{if (update) then "-update" else ""} \
      ~{if defined(per_insert) then ("-perinsert " +  '"' + per_insert + '"') else ""} \
      ~{if defined(min_obs) then ("-minobs " +  '"' + min_obs + '"') else ""} \
      ~{if defined(num_sd) then ("-numsd " +  '"' + num_sd + '"') else ""} \
      ~{if defined(good_cvg) then ("-goodcvg " +  '"' + good_cvg + '"') else ""} \
      ~{if (cest_at) then "-cestat" else ""} \
      ~{if defined(short_cvg) then ("-shortcvg " +  '"' + short_cvg + '"') else ""} \
      ~{if defined(long_cvg) then ("-longcvg " +  '"' + long_cvg + '"') else ""} \
      ~{if defined(same_cvg) then ("-samecvg " +  '"' + same_cvg + '"') else ""} \
      ~{if defined(out_iec_vg) then ("-outiecvg " +  '"' + out_iec_vg + '"') else ""} \
      ~{if defined(linking) then ("-linking " +  '"' + linking + '"') else ""} \
      ~{if defined(single_mate) then ("-singlemate " +  '"' + single_mate + '"') else ""} \
      ~{if defined(me_a_change) then ("-meachange " +  '"' + me_a_change + '"') else ""} \
      ~{if defined(sd_change) then ("-sdchange " +  '"' + sd_change + '"') else ""} \
      ~{if defined(ce_plot) then ("-ceplot " +  '"' + ce_plot + '"') else ""} \
      ~{if (debug) then "-debug" else ""}
  >>>
  parameter_meta {
    bank: "bank where assembly is stored"
    sc_aff: "take into account scaffolds when reporting results"
    feat: "write contig features into the bank"
    recompute: "recompute library sizes"
    update: "update bank with recomputed library sizes"
    per_insert: "output per-insert information in <file>"
    min_obs: "minimum number of good mate-pairs required to recompute\\nlibrary sizes"
    num_sd: "mate-pairs within <n> standard deviations of the mean library\\nsize are considered good. <n> can be fractional"
    good_cvg: "report regions with good mate coverage less than <n>"
    cest_at: "report regions with unusual CE stat (more than <numsd>\\nstandard errors from mean). cestat implies -recompute and\\ninvalidates -shortcvg and -longcvg"
    short_cvg: "report regions with short mate coverage greater than <n>"
    long_cvg: "report regions with long mate coverage greater than <n>"
    same_cvg: "report regions with coverage by mates with same orientation\\ngreater than <n>"
    out_iec_vg: "report regions with outie coverage greater than <n>"
    linking: "report regions with linking read coverage greater than <n>"
    single_mate: "report regions with singleton mate coverage > than <n>"
    me_a_change: "libraries whose mean changed by less than <n> will be\\nconsidered unchanged"
    sd_change: "libraries whose stdev. changed by less than <n> will be\\nconsidered unchanged"
    ce_plot: "file to output CE statistic plot to"
    debug: "output status for each mate-pair to STDERR"
  }
  output {
    File out_stdout = stdout()
    File out_per_insert = "${in_per_insert}"
    File out_ce_plot = "${in_ce_plot}"
  }
}