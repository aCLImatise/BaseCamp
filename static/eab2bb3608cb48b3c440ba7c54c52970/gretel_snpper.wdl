version 1.0

task GretelSnpper {
  input {
    String bamBam
    String contigContig
    String sS
    String eE
    String depthDepth
  }
  command <<<
    gretel-snpper \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(contigContig) then ("--contig " +  '"' + contigContig + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(depthDepth) then ("--depth " +  '"' + depthDepth + '"') else ""}
  >>>
}