version 1.0

task ExcludeSeqsByBlast.py {
  input {
    String queryQueryDb
    String subjectSubjectDb
    String outputOutputDir
  }
  command <<<
    exclude_seqs_by_blast.py \
      ~{if defined(queryQueryDb) then ("--querydb " +  '"' + queryQueryDb + '"') else ""} \
      ~{if defined(subjectSubjectDb) then ("--subjectdb " +  '"' + subjectSubjectDb + '"') else ""} \
      ~{if defined(outputOutputDir) then ("--outputdir " +  '"' + outputOutputDir + '"') else ""}
  >>>
}