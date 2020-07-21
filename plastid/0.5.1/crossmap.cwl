class: CommandLineTool
id: ../../../crossmap.cwl
inputs:
- id: kmer_length_generate
  doc: 'K-mer length to generate from input file. (Default: 29)'
  type: string
  inputBinding:
    prefix: -k
- id: offset
  doc: "Offset from 5' end of plus-strand read at which to attribute score (Default:\
    \ 14)"
  type: string
  inputBinding:
    prefix: --offset
- id: mismatches
  doc: 'Number of mismatches tolerated in alignment. (Default: 0)'
  type: string
  inputBinding:
    prefix: --mismatches
- id: bowtie
  doc: 'Location of bowtie binary (Default: ``/usr/local/bin/bowtie``)'
  type: string
  inputBinding:
    prefix: --bowtie
- id: have_km_ers
  doc: If specified, use k-mer files from previous run. In this case 'sequence_file'
    should be the value 'outbase' from the k-mer files you want to use.
  type: boolean
  inputBinding:
    prefix: --have_kmers
- id: save_km_ers
  doc: Save k-mer files for reuse in a subsequent run.
  type: boolean
  inputBinding:
    prefix: --save_kmers
- id: processes
  doc: Number of processes to use (should be <= number of chromosomes
  type: string
  inputBinding:
    prefix: --processes
- id: quiet
  doc: Suppress all warning messages. Cannot use with '-v'.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: "Increase verbosity. With '-v', show every warning. With '-vv', turn warnings\
    \ into exceptions. Cannot use with '-q'. (Default: show each type of warning once)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: sequence_format
  doc: 'Format of sequence_file (Default: fasta).'
  type: string
  inputBinding:
    prefix: --sequence_format
- id: out_base_read_length_mismatches_crossmap_dot_bed
  doc: Final mask file annotation, in BED format
  type: string
  inputBinding:
    position: 0
- id: out_base_read_length_mismatches_chromosome_km_ers_dot_fa
  doc: K-mers derived from chromosome `CHROMOSOME`. These files can be reused in subsequent
    runs allowing a different number of mismatches, using the ``--have_kmers`` option
  type: string
  inputBinding:
    position: 1
- id: e_bwt
  doc: Bowtie index of genome against which crossmap will be made. In most cases,
    should be generated from the same sequences that are in `sequence_file`.
  type: string
  inputBinding:
    position: 0
- id: out_base
  doc: Basename for output files
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- crossmap
