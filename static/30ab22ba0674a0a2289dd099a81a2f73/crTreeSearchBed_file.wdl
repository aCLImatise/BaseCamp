version 1.0

task CrTreeSearchBedFile.bedEnd {
  input {
    String? indexIndexCr
    String? chromChrom
    String? startStart
    String? endEnd
  }
  command <<<
    crTreeSearchBed file.bed end \
      ~{indexIndexCr} \
      ~{chromChrom} \
      ~{startStart} \
      ~{endEnd}
  >>>
}