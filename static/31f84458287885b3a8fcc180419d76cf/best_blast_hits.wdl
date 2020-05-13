version 1.0

task BestBlastHits {
  input {
    String inInFile
    String outdirOutdir
    Int minMinOverlap
  }
  command <<<
    best_blast_hits \
      ~{if defined(inInFile) then ("--infile " +  '"' + inInFile + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--min_overlap " +  '"' + minMinOverlap + '"') else ""}
  >>>
}