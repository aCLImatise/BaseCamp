version 1.0

task MetaeukReduceredundancy {
  input {
    Int overlapOverlap
    Int threadsThreads
    Int compressedCompressed
    Int vV
    String levyLevy
  }
  command <<<
    metaeuk reduceredundancy \
      ~{if defined(overlapOverlap) then ("--overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{if defined(compressedCompressed) then ("--compressed " +  '"' + compressedCompressed + '"') else ""} \
      ~{if defined(vV) then ("-v " +  '"' + vV + '"') else ""} \
      ~{if defined(levyLevy) then ("- Levy " +  '"' + levyLevy + '"') else ""}
  >>>
}