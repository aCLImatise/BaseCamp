version 1.0

task Utgcns {
  input {
    File? load_reads_partition
    String? load_tig_tigstore
    File? test_computation_tig
    File? load_tig_reads
    Int? partition
    Boolean? pbd_agc_on
    Boolean? no_realign
    File? write_computed_tigs_layout
    File? write_computed_tigs_fasta
    File? write_computed_tigs_fastq
    File? export
    Boolean? alias_for_tig
    String? minlength
    String? maxlength
    Boolean? only_un_assem
    Boolean? only_contig
    Boolean? no_repeat
    Boolean? no_bubble
    Boolean? no_singleton
    String? em
    String? expect_alignments_at
    Int? max_coverage
    Int? threads
    Boolean? enable_debugging_option
    String s_g_load
    String algorithm
    String aligner
    String results_write_computed
    String parameters
    String logging
  }
  command <<<
    utgcns \
      ~{s_g_load} \
      ~{algorithm} \
      ~{aligner} \
      ~{results_write_computed} \
      ~{parameters} \
      ~{logging} \
      ~{if defined(load_reads_partition) then ("-R " +  '"' + load_reads_partition + '"') else ""} \
      ~{if defined(load_tig_tigstore) then ("-T " +  '"' + load_tig_tigstore + '"') else ""} \
      ~{if defined(test_computation_tig) then ("-t " +  '"' + test_computation_tig + '"') else ""} \
      ~{if defined(load_tig_reads) then ("-import " +  '"' + load_tig_reads + '"') else ""} \
      ~{if defined(partition) then ("-partition " +  '"' + partition + '"') else ""} \
      ~{if (pbd_agc_on) then "-pbdagcon" else ""} \
      ~{if (no_realign) then "-norealign" else ""} \
      ~{if defined(write_computed_tigs_layout) then ("-L " +  '"' + write_computed_tigs_layout + '"') else ""} \
      ~{if defined(write_computed_tigs_fasta) then ("-A " +  '"' + write_computed_tigs_fasta + '"') else ""} \
      ~{if defined(write_computed_tigs_fastq) then ("-Q " +  '"' + write_computed_tigs_fastq + '"') else ""} \
      ~{if defined(export) then ("-export " +  '"' + export + '"') else ""} \
      ~{if (alias_for_tig) then "-u" else ""} \
      ~{if defined(minlength) then ("-minlength " +  '"' + minlength + '"') else ""} \
      ~{if defined(maxlength) then ("-maxlength " +  '"' + maxlength + '"') else ""} \
      ~{if (only_un_assem) then "-onlyunassem" else ""} \
      ~{if (only_contig) then "-onlycontig" else ""} \
      ~{if (no_repeat) then "-norepeat" else ""} \
      ~{if (no_bubble) then "-nobubble" else ""} \
      ~{if (no_singleton) then "-nosingleton" else ""} \
      ~{if defined(em) then ("-em " +  '"' + em + '"') else ""} \
      ~{if defined(expect_alignments_at) then ("-l " +  '"' + expect_alignments_at + '"') else ""} \
      ~{if defined(max_coverage) then ("-maxcoverage " +  '"' + max_coverage + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if (enable_debugging_option) then "-V" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/canu:2.1.1--he1b5a44_1"
  }
  parameter_meta {
    load_reads_partition: "Load reads from partition file 'f'"
    load_tig_tigstore: "v          Load tig from tigStore 't'."
    test_computation_tig: "Test the computation of the tig layout in 'file'\\n'file' can be from:\\n'tgStoreDump -d layout' (human readable layout format)\\n'utgcns -L'             (human readable layout format)\\n'utgcns -O'             (binary multialignment format)"
    load_tig_reads: "Load tig and reads from file 'name' created with -export.  This\\nis usually used by developers."
    partition: "b c\\nCreate partitions in the tigStore.  Canu uses a=0.8 b=1.0 c=0.1.\\na - Set partition size to be 'a * largest_tig'.  Any tig larger\\nthan this size is placed entirely in one partition; it is not\\nsplit between partitions.\\nb - Scale each tig by 'b' when computing its size.  Only really useful\\nfor adjusting for homopolymer compression; b=1.5 suggested.\\nc - Allow up to 'c * NR' reads per partition, where NR is the number\\nof reads in the assembly."
    pbd_agc_on: "Use pbdagcon (https://github.com/PacificBiosciences/pbdagcon).\\nThis is fast and robust.  It is the default algorithm.  It does not\\ngenerate a final multialignment output (the -v option will not show\\nanything useful)."
    no_realign: "Disable alignment of reads back to the final consensus sequence."
    write_computed_tigs_layout: "Write computed tigs to layout output file 'layouts'"
    write_computed_tigs_fasta: "Write computed tigs to fasta  output file 'fasta'"
    write_computed_tigs_fastq: "Write computed tigs to fastq  output file 'fastq'"
    export: "Create a copy of the inputs needed to compute the tigs.  This\\nfile can then be sent to the developers for debugging.  The tig(s)\\nare not processed and no other outputs are created.  Ideally,\\nonly one tig is selected (-u, below)."
    alias_for_tig: "Alias for -tig"
    minlength: "Do not compute consensus for tigs shorter than l bases."
    maxlength: "Do not compute consensus for tigs longer than l bases."
    only_un_assem: "Only compute consensus for unassembled tigs."
    only_contig: "Only compute consensus for real unitigs/contigs."
    no_repeat: "Do not compute consensus for repeat tigs."
    no_bubble: "Do not compute consensus for bubble tigs."
    no_singleton: "Do not compute consensus for singleton (single-read) tigs."
    em: "Don't ever allow alignments more than fraction m error"
    expect_alignments_at: "Expect alignments of at least l bases"
    max_coverage: "Use non-contained reads and the longest contained reads, up to\\nC coverage, for consensus generation.  The default is 0, and will\\nuse all reads."
    threads: "Use 't' compute threads; default 1."
    enable_debugging_option: "Enable debugging option 'verbosemultialign'."
    s_g_load: "-S g            Load reads from seqStore 'g'"
    algorithm: "-quick          Stitch reads together to cover the contig.  The bases in the contig\\nis formed from exactly one read; no consensus sequence is computed.\\nThis is useful for checking intermediate assembly structure by mapping\\nto reference, or as input to a polishing step.  Read positions will be\\nincorrect, and no BAM output is possible."
    aligner: "-edlib          Myers' O(ND) algorithm from Edlib (https://github.com/Martinsos/edlib).\\nThis is the default (and, yes, there is no non-default aligner)."
    results_write_computed: "-O results      Write computed tigs to binary output file 'results'"
    parameters: "-e e            Expect alignments at up to fraction e error"
    logging: "-v              Show multialigns."
  }
  output {
    File out_stdout = stdout()
    File out_write_computed_tigs_layout = "${in_write_computed_tigs_layout}"
    File out_write_computed_tigs_fasta = "${in_write_computed_tigs_fasta}"
    File out_write_computed_tigs_fastq = "${in_write_computed_tigs_fastq}"
  }
}