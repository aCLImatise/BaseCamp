version 1.0

task Peakzillapy {
  input {
    Int? model_peaks
    Int? enrichment_cut_off
    Int? score_cut_off
    Int? fragment_size
    Boolean? gaussian
    Boolean? bed_pe
    File? log
    String log_dot_txt
  }
  command <<<
    peakzilla_py \
      ~{log_dot_txt} \
      ~{if defined(model_peaks) then ("--model_peaks " +  '"' + model_peaks + '"') else ""} \
      ~{if defined(enrichment_cut_off) then ("--enrichment_cutoff " +  '"' + enrichment_cut_off + '"') else ""} \
      ~{if defined(score_cut_off) then ("--score_cutoff " +  '"' + score_cut_off + '"') else ""} \
      ~{if defined(fragment_size) then ("--fragment_size " +  '"' + fragment_size + '"') else ""} \
      ~{if (gaussian) then "--gaussian" else ""} \
      ~{if (bed_pe) then "--bedpe" else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  parameter_meta {
    model_peaks: "number of most highly enriched regions used to\\nestimate peak size: default = 200"
    enrichment_cut_off: "minimum cutoff for fold enrichment: default = 2"
    score_cut_off: "minimum cutoff for peak score: default = 1"
    fragment_size: "manually set fragment size in bp: default = estimate\\nfrom data"
    gaussian: "use empirical model estimate instead of gaussian"
    bed_pe: "input is paired end and in BEDPE format"
    log: "directory/filename to store log file to: default ="
    log_dot_txt: "-n, --negative        write negative peaks to negative_peaks.tsv"
  }
  output {
    File out_stdout = stdout()
  }
}