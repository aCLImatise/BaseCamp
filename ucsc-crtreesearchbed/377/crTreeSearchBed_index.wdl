version 1.0

task CrTreeSearchBedIndex.cr {
  input {
    File? fileFileBed
    String? indexIndexCr
    String? chromChrom
    String? startStart
    String? endEnd
  }
  command <<<
    crTreeSearchBed index.cr \
      ~{fileFileBed} \
      ~{indexIndexCr} \
      ~{chromChrom} \
      ~{startStart} \
      ~{endEnd}
  >>>
}