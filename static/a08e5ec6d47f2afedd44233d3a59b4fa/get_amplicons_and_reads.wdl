version 1.0

task GetAmpliconsAndReads.py {
  input {
    String? primer_hits
    String? fast_a_fps
  }
  command <<<
    get_amplicons_and_reads.py \
      ~{if defined(primer_hits) then ("--primer_hits " +  '"' + primer_hits + '"') else ""} \
      ~{if defined(fast_a_fps) then ("--fasta_fps " +  '"' + fast_a_fps + '"') else ""}
  >>>
  parameter_meta {
    primer_hits: "Target primer hits files.  Separate multiple files with a colon. [REQUIRED]"
    fast_a_fps: "Fasta filepaths.  Must match the fasta files used in the analyze_primers module.  Multiple fasta files can be passed, separated with a colon.  Order not important. [REQUIRED]"
  }
}