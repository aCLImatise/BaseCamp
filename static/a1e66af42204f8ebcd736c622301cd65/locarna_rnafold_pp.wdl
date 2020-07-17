version 1.0

task LocarnaRnafoldPp {
  input {
    Boolean? force_ali_fold
  }
  command <<<
    locarna_rnafold_pp \
      ~{true="--force-alifold" false="" force_ali_fold}
  >>>
  parameter_meta {
    force_ali_fold: "Force alifold for single sequences"
  }
}