version 1.0

task Oases {
  input {
    String? unused_reads
    String? amos_file
    String? alignments
    String? scaffolding
    Int? degree_cut_off
    Directory directory
  }
  command <<<
    oases \
      ~{directory} \
      ~{if defined(unused_reads) then ("-unused_reads " +  '"' + unused_reads + '"') else ""} \
      ~{if defined(amos_file) then ("-amos_file " +  '"' + amos_file + '"') else ""} \
      ~{if defined(alignments) then ("-alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(scaffolding) then ("-scaffolding " +  '"' + scaffolding + '"') else ""} \
      ~{if defined(degree_cut_off) then ("-degree_cutoff " +  '"' + degree_cut_off + '"') else ""}
  >>>
  parameter_meta {
    unused_reads: ": export unused reads in UnusedReads.fa file (default: no)"
    amos_file: ": export assembly to AMOS file (default: no export)"
    alignments: ": export a summary of contig alignment to the reference sequences (default: no)"
    scaffolding: ": Allow gaps in transcripts (default: no)"
    degree_cut_off: ": Maximum allowed degree on either end of a contigg to consider it 'unique' (default: 3)"
    directory: ": working directory name"
  }
}