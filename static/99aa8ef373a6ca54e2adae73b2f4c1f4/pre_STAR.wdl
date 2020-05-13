version 1.0

task PreSTAR.py {
  input {
    String listList
    String anAnNo
    String intersectIntersectBed
    String outdirOutdir
  }
  command <<<
    pre_STAR.py \
      ~{if defined(listList) then ("--list " +  '"' + listList + '"') else ""} \
      ~{if defined(anAnNo) then ("--anno " +  '"' + anAnNo + '"') else ""} \
      ~{if defined(intersectIntersectBed) then ("--intersectBed " +  '"' + intersectIntersectBed + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""}
  >>>
}