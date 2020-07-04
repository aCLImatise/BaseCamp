version 1.0

task DnaseDdhsScorer.py {
  input {
    Boolean? low_ram_mode
    Boolean? atacseq_mode_default
    String regions
    String treat_dhs
    String control_dhs
    String reads_treat
    String reads_control
    String filename_write_output
  }
  command <<<
    dnase_ddhs_scorer.py \
      ~{regions} \
      ~{treat_dhs} \
      ~{control_dhs} \
      ~{reads_treat} \
      ~{reads_control} \
      ~{filename_write_output} \
      ~{true="-l" false="" low_ram_mode} \
      ~{true="-A" false="" atacseq_mode_default}
  >>>
  parameter_meta {
    low_ram_mode: "low RAM mode (disables caching) (Default: False)"
    atacseq_mode_default: "ATAC-seq mode (default: False)"
    regions: "The set of BED files you wish to annotate with dDHS scores"
    treat_dhs: "The DHSs belonging to the Treatment"
    control_dhs: "The DHSs belonging to the control"
    reads_treat: "The BAM file containing the Treatment DNase-seq data"
    reads_control: "The BAM file containing the Control DNase-seq data"
    filename_write_output: "filename to write the output to"
  }
}