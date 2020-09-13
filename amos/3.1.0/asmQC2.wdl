version 1.0

task AsmQC2 {
  input {
    Boolean? bank
    Boolean? feat
    Boolean? recompute
    Boolean? update
    Int? min_obs
    Int? num_sd
    String? good_cvg
    String? short_cvg
    String? long_cvg
    String? same_cvg
    String? out_iec_vg
    String? linking
    String? single_mate
    String? me_a_change
    String? sd_change
    Boolean? debug
  }
  command <<<
    asmQC2 \
      ~{if (bank) then "-bank" else ""} \
      ~{if (feat) then "-feat" else ""} \
      ~{if (recompute) then "-recompute" else ""} \
      ~{if (update) then "-update" else ""} \
      ~{if defined(min_obs) then ("-minobs " +  '"' + min_obs + '"') else ""} \
      ~{if defined(num_sd) then ("-numsd " +  '"' + num_sd + '"') else ""} \
      ~{if defined(good_cvg) then ("-goodcvg " +  '"' + good_cvg + '"') else ""} \
      ~{if defined(short_cvg) then ("-shortcvg " +  '"' + short_cvg + '"') else ""} \
      ~{if defined(long_cvg) then ("-longcvg " +  '"' + long_cvg + '"') else ""} \
      ~{if defined(same_cvg) then ("-samecvg " +  '"' + same_cvg + '"') else ""} \
      ~{if defined(out_iec_vg) then ("-outiecvg " +  '"' + out_iec_vg + '"') else ""} \
      ~{if defined(linking) then ("-linking " +  '"' + linking + '"') else ""} \
      ~{if defined(single_mate) then ("-singlemate " +  '"' + single_mate + '"') else ""} \
      ~{if defined(me_a_change) then ("-meachange " +  '"' + me_a_change + '"') else ""} \
      ~{if defined(sd_change) then ("-sdchange " +  '"' + sd_change + '"') else ""} \
      ~{if (debug) then "-debug" else ""}
  >>>
  parameter_meta {
    bank: "bank where assembly is stored"
    feat: "write contig features into the bank"
    recompute: "recompute library sizes"
    update: "update bank with recomputed library sizes"
    min_obs: "minimum number of good mate-pairs required to recompute\\nlibrary sizes"
    num_sd: "mate-pairs within <n> standard deviations of the mean\\nlibrary size are considered good. <n> can be fractional"
    good_cvg: "report regions with good mate coverage less than <n>"
    short_cvg: "report regions with short mate coverage greater than <n>"
    long_cvg: "report regions with long mate coverage greater than <n>"
    same_cvg: "report regions with coverage by mates with same orientation\\ngreater than <n>"
    out_iec_vg: "report regions with outie coverage greater than <n>"
    linking: "report regions with linking read coverage greater than <n>"
    single_mate: "report regions with singleton mate coverage > than <n>"
    me_a_change: "libraries whose mean changed by less than <n> will be considered unchanged"
    sd_change: "libraries whose stdev. changed by less than <n> will be considered unchanged"
    debug: "output status for each mate-pair to STDERR"
  }
  output {
    File out_stdout = stdout()
  }
}