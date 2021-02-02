class: CommandLineTool
id: crossmap.cwl
inputs:
- id: in_kmer_length_generate
  doc: "K-mer length to generate from input file. (Default:\n29)"
  type: long
  inputBinding:
    prefix: -k
- id: in_offset
  doc: "Offset from 5' end of plus-strand read at which to\nattribute score (Default:\
    \ 14)"
  type: long
  inputBinding:
    prefix: --offset
- id: in_mismatches
  doc: "Number of mismatches tolerated in alignment. (Default:\n0)"
  type: long
  inputBinding:
    prefix: --mismatches
- id: in_bowtie
  doc: "Location of bowtie binary (Default:\n``/usr/local/bin/bowtie``)"
  type: string
  inputBinding:
    prefix: --bowtie
- id: in_have_km_ers
  doc: "If specified, use k-mer files from previous run. In\nthis case 'sequence_file'\
    \ should be the value\n'outbase' from the k-mer files you want to use."
  type: boolean
  inputBinding:
    prefix: --have_kmers
- id: in_save_km_ers
  doc: Save k-mer files for reuse in a subsequent run.
  type: boolean
  inputBinding:
    prefix: --save_kmers
- id: in_processes
  doc: Number of processes to use (should be <= number of
  type: long
  inputBinding:
    prefix: --processes
- id: in_quiet
  doc: Suppress all warning messages. Cannot use with '-v'.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: "Increase verbosity. With '-v', show every warning.\nWith '-vv', turn warnings\
    \ into exceptions. Cannot use\nwith '-q'. (Default: show each type of warning\
    \ once)"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_sequence_file
  doc: "[fasta | fastq | twobit | genbank | embl]\nA file of DNA sequence"
  type: File
  inputBinding:
    prefix: --sequence_file
- id: in_sequence_format
  doc: "Format of sequence_file (Default: fasta).\n"
  type: string
  inputBinding:
    prefix: --sequence_format
- id: in_out_base_read_length_mismatches_crossmap_dot_bed
  doc: Final mask file annotation, in BED format
  type: string
  inputBinding:
    position: 0
- id: in_out_base_read_length_mismatches_chromosome_km_ers_dot_fa
  doc: "K-mers derived from chromosome `CHROMOSOME`. These\nfiles can be reused in\
    \ subsequent runs allowing a different number of\nmismatches, using the ``--have_kmers``\
    \ option"
  type: string
  inputBinding:
    position: 1
- id: in_sequence
  doc: '- By default, crossmap creates BED files. Consider converting these to'
  type: string
  inputBinding:
    position: 0
- id: in_e_bwt
  doc: "Bowtie index of genome against which crossmap will be\nmade. In most cases,\
    \ should be generated from the same\nsequences that are in `sequence_file`."
  type: string
  inputBinding:
    position: 0
- id: in_out_base
  doc: Basename for output files
  type: string
  inputBinding:
    position: 1
- id: in_chromosomes
  doc: 'warning/error options:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- crossmap
