version 1.0

task CrTreeSearchBedFile.bedIndex.crEnd {
  input {
    String? chromChrom
    String? startStart
    String? endEnd
  }
  command <<<
    crTreeSearchBed file.bed index.cr end \
      ~{chromChrom} \
      ~{startStart} \
      ~{endEnd}
  >>>
}