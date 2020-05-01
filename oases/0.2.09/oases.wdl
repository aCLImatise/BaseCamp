version 1.0

task Oases {
  input {
    Boolean unusedUnusedReads
    Boolean amosAmosFile
    Boolean alignmentsAlignments
    Boolean scaffoldingScaffolding
    Int degreeDegreeCutOff
    Directory? directoryDirectory
  }
  command <<<
    oases \
      ~{directoryDirectory} \
      ~{true="-unused_reads" false="" unusedUnusedReads} \
      ~{true="-amos_file" false="" amosAmosFile} \
      ~{true="-alignments" false="" alignmentsAlignments} \
      ~{true="-scaffolding" false="" scaffoldingScaffolding} \
      ~{if defined(degreeDegreeCutOff) then ("-degree_cutoff " +  '"' + degreeDegreeCutOff + '"') else ""}
  >>>
}