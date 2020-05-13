version 1.0

task CrTreeSearchBedEnd {
  input {
    File? fileFileBed
    String? indexIndexCr
    String? chromChrom
    String? startStart
    String? endEnd
  }
  command <<<
    crTreeSearchBed end \
      ~{fileFileBed} \
      ~{indexIndexCr} \
      ~{chromChrom} \
      ~{startStart} \
      ~{endEnd}
  >>>
}