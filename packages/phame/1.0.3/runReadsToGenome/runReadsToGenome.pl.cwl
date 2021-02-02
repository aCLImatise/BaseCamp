class: CommandLineTool
id: runReadsToGenome.pl.cwl
inputs:
- id: in_spaceseparated_pairedend_reads
  doc: "'leftSequenceFile rightSequenceFile'\nSpace-separated paired-end reads in\
    \ quote"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_sequencefileprovides_file_containing
  doc: "sequenceFile\nProvides a file containing single-end reads."
  type: boolean
  inputBinding:
    prefix: -u
- id: in_long
  doc: long reads file in fasta format.
  type: boolean
  inputBinding:
    prefix: -long
- id: in_pac_bio
  doc: <bool> using this flag combined with -long for Pacbio long reads (bwa only)
  type: boolean
  inputBinding:
    prefix: --pacbio
- id: in_ref
  doc: reference sequences file in fasta format
  type: boolean
  inputBinding:
    prefix: -ref
- id: in_pre
  doc: output files' prefix (default "ReadsMapping")
  type: boolean
  inputBinding:
    prefix: -pre
- id: in_output_directory
  doc: output directory
  type: Directory
  inputBinding:
    prefix: -d
- id: in_consensus
  doc: '<bool> output consensus fasta file (default: on, set 0 to turn off)'
  type: boolean
  inputBinding:
    prefix: -consensus
- id: in_aligner
  doc: 'bwa or bowtie or snap or minimap2 (default: bwa)'
  type: boolean
  inputBinding:
    prefix: -aligner
- id: in_bwa_options
  doc: "bwa options\ntype \"bwa mem\" to see options\ndefault: \"-t 4 \"\n-t     \
    \   <int> number of threads [4]\n-I        the input is in the Illumina 1.3+ FASTQ-like\
    \ format"
  type: long
  inputBinding:
    prefix: -bwa_options
- id: in_bowtie_options
  doc: "bowtie options\ntype \"bowtie2 -h\" to see options\ndefault: \"-p 4 -a \"\n\
    -p           <int> number of alignment threads to launch [4]\n-a           report\
    \ all alignments; very slow\n--phred64    qualities are Phred+64"
  type: long
  inputBinding:
    prefix: -bowtie_options
- id: in_snap_options
  doc: "snap options\ntype \"snap paired\" to see options"
  type: boolean
  inputBinding:
    prefix: -snap_options
- id: in_minimap_two_options
  doc: "type \"minimap2\" to see options\ndefault: \"-t 4 \""
  type: boolean
  inputBinding:
    prefix: -minimap2_options
- id: in_skip_aln
  doc: "<bool> skip the alignment steps, assume bam files were generated\nand with\
    \ proper prefix,outpurDir.  default: off"
  type: boolean
  inputBinding:
    prefix: -skip_aln
- id: in_no_plot
  doc: '<bool> default: off'
  type: boolean
  inputBinding:
    prefix: -no_plot
- id: in_no_snp
  doc: '<bool> default: off'
  type: boolean
  inputBinding:
    prefix: -no_snp
- id: in_debug
  doc: '<bool> default: off'
  type: boolean
  inputBinding:
    prefix: -debug
- id: in_cpu
  doc: number of CPUs [4]. will overwrite aligner options.
  type: boolean
  inputBinding:
    prefix: -cpu
- id: in_min_in_del_candidate_depth
  doc: number gapped reads for indel candidates [3]
  type: long
  inputBinding:
    prefix: -min_indel_candidate_depth
- id: in_min_alt_bases
  doc: minimum number of alternate bases [3]
  type: boolean
  inputBinding:
    prefix: -min_alt_bases
- id: in_max_depth
  doc: maximum read depth [1000000]
  type: boolean
  inputBinding:
    prefix: -max_depth
- id: in_min_depth
  doc: minimum read depth [7]
  type: boolean
  inputBinding:
    prefix: -min_depth
- id: in_snp_gap_filter
  doc: SNP within INT bp around a gap to be filtered [3]
  type: boolean
  inputBinding:
    prefix: -snp_gap_filter
- id: in_perl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- runReadsToGenome.pl
