version 1.0

task Peakzilla.py {
  input {
    String? model_peaks
    String? enrichment_cut_off
    String? score_cut_off
    String? fragment_size
    Boolean? gaussian
    Boolean? bed_pe
    String? log
    Boolean? negative
    String chip_dot_bed
    String control_dot_bed
  }
  command <<<
    peakzilla.py \
      ~{chip_dot_bed} \
      ~{control_dot_bed} \
      ~{if defined(model_peaks) then ("--model_peaks " +  '"' + model_peaks + '"') else ""} \
      ~{if defined(enrichment_cut_off) then ("--enrichment_cutoff " +  '"' + enrichment_cut_off + '"') else ""} \
      ~{if defined(score_cut_off) then ("--score_cutoff " +  '"' + score_cut_off + '"') else ""} \
      ~{if defined(fragment_size) then ("--fragment_size " +  '"' + fragment_size + '"') else ""} \
      ~{true="--gaussian" false="" gaussian} \
      ~{true="--bedpe" false="" bed_pe} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{true="--negative" false="" negative}
  >>>
  parameter_meta {
    model_peaks: "number of most highly enriched regions used to estimate peak size: default = 200"
    enrichment_cut_off: "minimum cutoff for fold enrichment: default = 2"
    score_cut_off: "minimum cutoff for peak score: default = 1"
    fragment_size: "manually set fragment size in bp: default = estimate from data"
    gaussian: "use empirical model estimate instead of gaussian"
    bed_pe: "input is paired end and in BEDPE format"
    log: "directory/filename to store log file to: default = log.txt"
    negative: "write negative peaks to negative_peaks.tsv"
    chip_dot_bed: ""
    control_dot_bed: ""
  }
}