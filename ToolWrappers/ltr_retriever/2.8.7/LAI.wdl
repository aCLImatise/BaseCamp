version 1.0

task LAI {
  input {
    Boolean? genome
    Boolean? intact
    File? all
    Boolean? window
    Boolean? step
    Boolean? quick_estimation_faster
    Boolean? qq
    Boolean? mono
    Boolean? iden
    Boolean? to_tltr
    Boolean? blast
    Boolean? number_run_blastn
  }
  command <<<
    LAI \
      ~{if (genome) then "-genome" else ""} \
      ~{if (intact) then "-intact" else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if (window) then "-window" else ""} \
      ~{if (step) then "-step" else ""} \
      ~{if (quick_estimation_faster) then "-q" else ""} \
      ~{if (qq) then "-qq" else ""} \
      ~{if (mono) then "-mono" else ""} \
      ~{if (iden) then "-iden" else ""} \
      ~{if (to_tltr) then "-totLTR" else ""} \
      ~{if (blast) then "-blast" else ""} \
      ~{if (number_run_blastn) then "-t" else ""}
  >>>
  parameter_meta {
    genome: "[file]  The genome file that is used to generate everything."
    intact: "[file]  A list of intact LTR-RTs generated by LTR_retriever (genome.fa.pass.list)."
    all: "[file]     RepeatMasker annotation of all LTR sequences in the genome (genome.fa.out)."
    window: "[int]   Window size for LAI estimation. Default: 3000000 (3 Mb)"
    step: "[int]     Step size for the estimation window to move forward. Default: 300000 (300 Kb)\\nSet step size = window size if prefer non-overlapping outputs."
    quick_estimation_faster: "Quick estimation of LTR identity (much faster for large genomes, may sacrifice ~0.5% of accuracy)."
    qq: "No estimation of LTR identity, only output raw LAI for within species comparison (very quick)."
    mono: "[file]    This parameter is mainly for ployploid genomes. User provides a list of sequence names that represent a monoploid (1x).\\nLAI will calculated only on these sequences if provided. So user can also specify sequence of interest for LAI calculation."
    iden: "[0-100]   Mean LTR identity (%) in the monoploid (1x) genome. This parameter will inactivate de novo estimation (same speed to -qq)."
    to_tltr: "[0-100] Specify the total LTR sequence content (%) in the genome instead of estimating from the -all RepeatMasker file."
    blast: "[path]   The path to the blastn program. If left unspecified, then blastn must be accessible via shell ENV."
    number_run_blastn: "[number]     Number of threads to run blastn."
  }
  output {
    File out_stdout = stdout()
    File out_all = "${in_all}"
  }
}