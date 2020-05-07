class: CommandLineTool
id: miRge2.0_predict.cwl
inputs:
- id: args
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: s
  doc: '[sample <required> [sample <required> ...]] two options: 1. A file where each
    row represents one sample name; 2. *.fastq *.fastq ... Or *.fastq.gz *.fastq.gz
    ...'
  type: boolean
  inputBinding:
    prefix: -s
- id: o
  doc: 'the directory of the outputs (default: current directory)'
  type: string
  inputBinding:
    prefix: -o
- id: d
  doc: 'the miRNA database (default: miRBase. miRGeneDB is optional)'
  type: string
  inputBinding:
    prefix: -d
- id: pb
  doc: the path to the system's bowtie binary
  type: string
  inputBinding:
    prefix: -pb
- id: lib
  doc: the path to the miRge libraries
  type: string
  inputBinding:
    prefix: -lib
- id: sp
  doc: the species can be human, mouse, fruitfly, nematode, rat and zebrafish (novel
    miRNA detection is confined in human and mouse)
  type: string
  inputBinding:
    prefix: -sp
- id: ps
  doc: the path to the system's samtools binary
  type: string
  inputBinding:
    prefix: -ps
- id: pr
  doc: the path to the system's rnafold binary
  type: string
  inputBinding:
    prefix: -pr
- id: ex
  doc: 'the threshold of the proportion of canonical reads for the miRNAs to determine
    whether keeping them or not when counting. Users can set it between 0 and 0.5.
    (default: 0.1)'
  type: double
  inputBinding:
    prefix: -ex
- id: ad
  doc: 'the adapter need to be removed which could be illumina, ion or a defined sequence
    (default: none)'
  type: string
  inputBinding:
    prefix: -ad
- id: phred64
  doc: 'phred64 format(default: 64)'
  type: boolean
  inputBinding:
    prefix: -phred64
- id: spike_in
  doc: "switch to annotate spike-ins if the bowtie index files are loacted at the\
    \ path of bowtie's index files (default: off)"
  type: boolean
  inputBinding:
    prefix: -spikeIn
- id: tcf
  doc: 'switch to write trimmed and collapsed fasta file (default: off)'
  type: boolean
  inputBinding:
    prefix: -tcf
- id: di
  doc: 'switch to calculate of isomirs entropy (default: off)'
  type: boolean
  inputBinding:
    prefix: -di
- id: cpu
  doc: 'the number of processors to use for trimming, qc, and alignment (default:
    1)'
  type: long
  inputBinding:
    prefix: -cpu
- id: a_i
  doc: 'switch to calculate of A to I editing (default: off)'
  type: boolean
  inputBinding:
    prefix: -ai
- id: gff
  doc: 'switch to output results in gff format (default: off)'
  type: boolean
  inputBinding:
    prefix: -gff
- id: trf
  doc: 'switch to analyze tRNA fragment (default: off)'
  type: boolean
  inputBinding:
    prefix: -trf
- id: ws
  doc: the file containing the overall samples to analysis for novel miRNA prediction.
    No header, just a list of *.fastq file names in a column. Names of files can be
    to your choosing (e.g. filestochecknovel.txt)
  type: File
  inputBinding:
    prefix: -ws
- id: min_l
  doc: 'the minimum length of the reatined reads for novel miRNA detection (default:
    16)'
  type: long
  inputBinding:
    prefix: -minl
- id: max_l
  doc: 'the maximum length of the reatined reads for novel miRNA detection (default:
    25)'
  type: long
  inputBinding:
    prefix: -maxl
- id: cc
  doc: 'the maximum read count of the reatined reads for novel miRNA detection (default:
    2)'
  type: long
  inputBinding:
    prefix: -cc
- id: ml
  doc: 'the maximum number of mapping loci for the retained reads for novel miRNA
    detection (default: 3)'
  type: long
  inputBinding:
    prefix: -ml
- id: sl
  doc: 'the seed length when invoking Bowtie for novel miRNA detection (default: 25)'
  type: long
  inputBinding:
    prefix: -sl
- id: olc
  doc: 'the length of overlapped seqence when joining reads into longer sequences
    based on the coordinate on the genome for novel miRNA detection (default: 14)'
  type: long
  inputBinding:
    prefix: -olc
- id: clc
  doc: 'the maximum length of the clustered sequences for novel miRNA detection (default:
    30)'
  type: long
  inputBinding:
    prefix: -clc
outputs: []
cwlVersion: v1.1
baseCommand:
- miRge2.0
- predict
