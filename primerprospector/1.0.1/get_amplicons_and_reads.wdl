version 1.0

task GetAmpliconsAndReads.py {
  input {
    String primerPrimerHits
    String fastFastAFps
  }
  command <<<
    get_amplicons_and_reads.py \
      ~{if defined(primerPrimerHits) then ("--primer_hits " +  '"' + primerPrimerHits + '"') else ""} \
      ~{if defined(fastFastAFps) then ("--fasta_fps " +  '"' + fastFastAFps + '"') else ""}
  >>>
}