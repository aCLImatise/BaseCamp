version 1.0

task CrTreeSearchBedChrom {
  input {
    File? fileFileBed
    String? indexIndexCr
    String? chromChrom
    String? startStart
    String? endEnd
  }
  command <<<
    crTreeSearchBed chrom \
      ~{fileFileBed} \
      ~{indexIndexCr} \
      ~{chromChrom} \
      ~{startStart} \
      ~{endEnd}
  >>>
}