version 1.0

task ExtractSupertranscriptFromReference.py {
  input {
    String gtfGtf
    String gff3Gff3
    String seqSeq
    String oO
  }
  command <<<
    extract_supertranscript_from_reference.py \
      ~{if defined(gtfGtf) then ("--gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(gff3Gff3) then ("--gff3 " +  '"' + gff3Gff3 + '"') else ""} \
      ~{if defined(seqSeq) then ("--seq " +  '"' + seqSeq + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}