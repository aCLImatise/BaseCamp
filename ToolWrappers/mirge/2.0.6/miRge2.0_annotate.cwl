class: CommandLineTool
id: miRge2.0_annotate.cwl
inputs:
- id: in_two_options_file
  doc: "[sample <required> [sample <required> ...]]\ntwo options: 1. A file where\
    \ each row represents one\nsample name; 2. *.fastq *.fastq ... Or *.fastq.gz\n\
    *.fastq.gz ..."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_directory_outputs_default
  doc: "the directory of the outputs (default: current\ndirectory)"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_mirna_database_default
  doc: "the miRNA database (default: miRBase. miRGeneDB is\noptional)"
  type: string?
  inputBinding:
    prefix: -d
- id: in_pb
  doc: the path to the system's bowtie binary
  type: File?
  inputBinding:
    prefix: -pb
- id: in_lib
  doc: the path to the miRge libraries
  type: File?
  inputBinding:
    prefix: -lib
- id: in_sp
  doc: "the species can be human, mouse, fruitfly, nematode,\nrat and zebrafish (novel\
    \ miRNA detection is confined\nin human and mouse)"
  type: string?
  inputBinding:
    prefix: -sp
- id: in_ex
  doc: "the threshold of the proportion of canonical reads for\nthe miRNAs to determine\
    \ whether keeping them or not\nwhen counting. Users can set it between 0 and 0.5.\n\
    (default: 0.1)"
  type: double?
  inputBinding:
    prefix: -ex
- id: in_ad
  doc: "the adapter need to be removed which could be\nillumina, ion or a defined\
    \ sequence (default: none)"
  type: string?
  inputBinding:
    prefix: -ad
- id: in_phred_six_four
  doc: 'phred64 format (default: 64)'
  type: boolean?
  inputBinding:
    prefix: -phred64
- id: in_spike_in
  doc: "switch to annotate spike-ins if the bowtie index files\nare loacted at the\
    \ path of bowtie's index files\n(default: off)"
  type: boolean?
  inputBinding:
    prefix: -spikeIn
- id: in_tcf
  doc: "switch to write trimmed and collapsed fasta file\n(default: off)"
  type: boolean?
  inputBinding:
    prefix: -tcf
- id: in_di
  doc: 'switch to calculate of isomirs entropy (default: off)'
  type: boolean?
  inputBinding:
    prefix: -di
- id: in_cpu
  doc: "the number of processors to use for trimming, qc, and\nalignment (default:\
    \ 1)"
  type: long?
  inputBinding:
    prefix: -cpu
- id: in_a_i
  doc: 'switch to calculate of A to I editing (default: off)'
  type: boolean?
  inputBinding:
    prefix: -ai
- id: in_gff
  doc: 'switch to output results in gff format (default: off)'
  type: boolean?
  inputBinding:
    prefix: -gff
- id: in_trf
  doc: 'switch to analyze tRNA fragment (default: off)'
  type: boolean?
  inputBinding:
    prefix: -trf
- id: in_args
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- miRge2.0
- annotate
