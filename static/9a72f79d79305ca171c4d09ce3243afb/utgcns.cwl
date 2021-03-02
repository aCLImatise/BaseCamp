class: CommandLineTool
id: utgcns.cwl
inputs:
- id: in_load_reads_partition
  doc: Load reads from partition file 'f'
  type: File?
  inputBinding:
    prefix: -R
- id: in_load_tig_tigstore
  doc: v          Load tig from tigStore 't'.
  type: string?
  inputBinding:
    prefix: -T
- id: in_test_computation_tig
  doc: "Test the computation of the tig layout in 'file'\n'file' can be from:\n'tgStoreDump\
    \ -d layout' (human readable layout format)\n'utgcns -L'             (human readable\
    \ layout format)\n'utgcns -O'             (binary multialignment format)"
  type: File?
  inputBinding:
    prefix: -t
- id: in_import
  doc: "Load tig and reads from file 'name' created with -export.  This\nis usually\
    \ used by developers."
  type: File?
  inputBinding:
    prefix: -import
- id: in_partition
  doc: "b c\nCreate partitions in the tigStore.  Canu uses a=0.8 b=1.0 c=0.1.\na -\
    \ Set partition size to be 'a * largest_tig'.  Any tig larger\nthan this size\
    \ is placed entirely in one partition; it is not\nsplit between partitions.\n\
    b - Scale each tig by 'b' when computing its size.  Only really useful\nfor adjusting\
    \ for homopolymer compression; b=1.5 suggested.\nc - Allow up to 'c * NR' reads\
    \ per partition, where NR is the number\nof reads in the assembly."
  type: long?
  inputBinding:
    prefix: -partition
- id: in_pbd_agc_on
  doc: "Use pbdagcon (https://github.com/PacificBiosciences/pbdagcon).\nThis is fast\
    \ and robust.  It is the default algorithm.  It does not\ngenerate a final multialignment\
    \ output (the -v option will not show\nanything useful)."
  type: boolean?
  inputBinding:
    prefix: -pbdagcon
- id: in_no_realign
  doc: Disable alignment of reads back to the final consensus sequence.
  type: boolean?
  inputBinding:
    prefix: -norealign
- id: in_write_computed_tigs_layout
  doc: Write computed tigs to layout output file 'layouts'
  type: File?
  inputBinding:
    prefix: -L
- id: in_write_computed_tigs_fasta
  doc: Write computed tigs to fasta  output file 'fasta'
  type: File?
  inputBinding:
    prefix: -A
- id: in_write_computed_tigs_fastq
  doc: Write computed tigs to fastq  output file 'fastq'
  type: File?
  inputBinding:
    prefix: -Q
- id: in_export
  doc: "Create a copy of the inputs needed to compute the tigs.  This\nfile can then\
    \ be sent to the developers for debugging.  The tig(s)\nare not processed and\
    \ no other outputs are created.  Ideally,\nonly one tig is selected (-u, below)."
  type: File?
  inputBinding:
    prefix: -export
- id: in_alias_for_tig
  doc: Alias for -tig
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_minlength
  doc: Do not compute consensus for tigs shorter than l bases.
  type: string?
  inputBinding:
    prefix: -minlength
- id: in_maxlength
  doc: Do not compute consensus for tigs longer than l bases.
  type: string?
  inputBinding:
    prefix: -maxlength
- id: in_only_un_assem
  doc: Only compute consensus for unassembled tigs.
  type: boolean?
  inputBinding:
    prefix: -onlyunassem
- id: in_only_contig
  doc: Only compute consensus for real unitigs/contigs.
  type: boolean?
  inputBinding:
    prefix: -onlycontig
- id: in_no_repeat
  doc: Do not compute consensus for repeat tigs.
  type: boolean?
  inputBinding:
    prefix: -norepeat
- id: in_no_bubble
  doc: Do not compute consensus for bubble tigs.
  type: boolean?
  inputBinding:
    prefix: -nobubble
- id: in_no_singleton
  doc: Do not compute consensus for singleton (single-read) tigs.
  type: boolean?
  inputBinding:
    prefix: -nosingleton
- id: in_em
  doc: Don't ever allow alignments more than fraction m error
  type: string?
  inputBinding:
    prefix: -em
- id: in_expect_alignments_at
  doc: Expect alignments of at least l bases
  type: string?
  inputBinding:
    prefix: -l
- id: in_max_coverage
  doc: "Use non-contained reads and the longest contained reads, up to\nC coverage,\
    \ for consensus generation.  The default is 0, and will\nuse all reads."
  type: long?
  inputBinding:
    prefix: -maxcoverage
- id: in_threads
  doc: Use 't' compute threads; default 1.
  type: long?
  inputBinding:
    prefix: -threads
- id: in_enable_debugging_option
  doc: Enable debugging option 'verbosemultialign'.
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_input
  doc: -S g            Load reads from seqStore 'g'
  type: string
  inputBinding:
    position: 0
- id: in_algorithm
  doc: "-quick          Stitch reads together to cover the contig.  The bases in the\
    \ contig\nis formed from exactly one read; no consensus sequence is computed.\n\
    This is useful for checking intermediate assembly structure by mapping\nto reference,\
    \ or as input to a polishing step.  Read positions will be\nincorrect, and no\
    \ BAM output is possible."
  type: string
  inputBinding:
    position: 1
- id: in_aligner
  doc: "-edlib          Myers' O(ND) algorithm from Edlib (https://github.com/Martinsos/edlib).\n\
    This is the default (and, yes, there is no non-default aligner)."
  type: string
  inputBinding:
    position: 2
- id: in_output
  doc: -O results      Write computed tigs to binary output file 'results'
  type: string
  inputBinding:
    position: 3
- id: in_parameters
  doc: -e e            Expect alignments at up to fraction e error
  type: string
  inputBinding:
    position: 0
- id: in_logging
  doc: -v              Show multialigns.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_computed_tigs_layout
  doc: Write computed tigs to layout output file 'layouts'
  type: File?
  outputBinding:
    glob: $(inputs.in_write_computed_tigs_layout)
- id: out_write_computed_tigs_fasta
  doc: Write computed tigs to fasta  output file 'fasta'
  type: File?
  outputBinding:
    glob: $(inputs.in_write_computed_tigs_fasta)
- id: out_write_computed_tigs_fastq
  doc: Write computed tigs to fastq  output file 'fastq'
  type: File?
  outputBinding:
    glob: $(inputs.in_write_computed_tigs_fastq)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/canu:2.1.1--he1b5a44_1
cwlVersion: v1.1
baseCommand:
- utgcns
