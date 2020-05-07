version 1.0

task GenerateTranscriptsGff.py {
  input {
    String bcBcChrList
    String estEstUtrLens
    String? bcBcDir
  }
  command <<<
    generate_transcripts_gff.py \
      ~{bcBcDir} \
      ~{if defined(bcBcChrList) then ("--BC_chrlist " +  '"' + bcBcChrList + '"') else ""} \
      ~{if defined(estEstUtrLens) then ("--est_utr_lens " +  '"' + estEstUtrLens + '"') else ""}
  >>>
}