version 1.0

task MafFrag {
  input {
    String outOutName
    String? databaseDatabase
    String? mafMafTrack
    String? chromChrom
    String? startStart
    String? endEnd
    String? strandStrand
    String? outOutMaf
  }
  command <<<
    mafFrag \
      ~{databaseDatabase} \
      ~{if defined(outOutName) then ("-outName " +  '"' + outOutName + '"') else ""} \
      ~{mafMafTrack} \
      ~{chromChrom} \
      ~{startStart} \
      ~{endEnd} \
      ~{strandStrand} \
      ~{outOutMaf}
  >>>
}