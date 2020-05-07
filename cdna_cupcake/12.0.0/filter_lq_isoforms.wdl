version 1.0

task FilterLqIsoforms.py {
  input {
    Int minMinFlCount
    Int minMinExpAcc
    Boolean isIsFlNc
    String? fastFastQFilename
    String? outputOutputFilename
  }
  command <<<
    filter_lq_isoforms.py \
      ~{fastFastQFilename} \
      ~{if defined(minMinFlCount) then ("--min_fl_count " +  '"' + minMinFlCount + '"') else ""} \
      ~{if defined(minMinExpAcc) then ("--min_exp_acc " +  '"' + minMinExpAcc + '"') else ""} \
      ~{true="--is_flnc" false="" isIsFlNc} \
      ~{outputOutputFilename}
  >>>
}