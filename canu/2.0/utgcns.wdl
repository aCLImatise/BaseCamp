version 1.0

task Utgcns {
  input {
    String? write_computed_tigs_binary
    String? write_computed_tigs_layout
    String? write_computed_tigs_fasta
    String? write_computed_tigs_fastq
    String? export
    String parameters
    String logging
  }
  command <<<
    utgcns \
      ~{parameters} \
      ~{logging} \
      ~{if defined(write_computed_tigs_binary) then ("-O " +  '"' + write_computed_tigs_binary + '"') else ""} \
      ~{if defined(write_computed_tigs_layout) then ("-L " +  '"' + write_computed_tigs_layout + '"') else ""} \
      ~{if defined(write_computed_tigs_fasta) then ("-A " +  '"' + write_computed_tigs_fasta + '"') else ""} \
      ~{if defined(write_computed_tigs_fastq) then ("-Q " +  '"' + write_computed_tigs_fastq + '"') else ""} \
      ~{if defined(export) then ("-export " +  '"' + export + '"') else ""}
  >>>
  parameter_meta {
    write_computed_tigs_binary: "Write computed tigs to binary output file 'results'"
    write_computed_tigs_layout: "Write computed tigs to layout output file 'layouts'"
    write_computed_tigs_fasta: "Write computed tigs to fasta  output file 'fasta'"
    write_computed_tigs_fastq: "Write computed tigs to fastq  output file 'fastq'"
    export: "Create a copy of the inputs needed to compute the tigs.  This file can then be sent to the developers for debugging.  The tig(s) are not processed and no other outputs are created.  Ideally, only one tig is selected (-u, below)."
    parameters: "-e e            Expect alignments at up to fraction e error -em m           Don't ever allow alignments more than fraction m error -l l            Expect alignments of at least l bases -maxcoverage c  Use non-contained reads and the longest contained reads, up to C coverage, for consensus generation.  The default is 0, and will use all reads. -threads t      Use 't' compute threads; default 1."
    logging: "-v              Show multialigns. -V              Enable debugging option 'verbosemultialign'."
  }
}