version 1.0

task CrTreeSearchBedStart {
  input {
    File? fileFileBed
    String? indexIndexCr
    String? chromChrom
    String? startStart
    String? endEnd
  }
  command <<<
    crTreeSearchBed start \
      ~{fileFileBed} \
      ~{indexIndexCr} \
      ~{chromChrom} \
      ~{startStart} \
      ~{endEnd}
  >>>
}