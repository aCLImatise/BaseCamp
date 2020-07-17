version 1.0

task TreeEventsDlc {
  input {
    Boolean? explicit
    Boolean? use_locus_recon
  }
  command <<<
    tree-events-dlc \
      ~{true="--explicit" false="" explicit} \
      ~{true="--use-locus-recon" false="" use_locus_recon}
  >>>
  parameter_meta {
    explicit: "set to ignore extra lineages at implied speciation nodes"
    use_locus_recon: "if set, use locus recon rather than MPR"
  }
}