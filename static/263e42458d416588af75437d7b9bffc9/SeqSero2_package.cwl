class: CommandLineTool
id: ../../../SeqSero2_package.py.cwl
inputs:
- id: string_pathtoinputdata
  doc: '<string>: path/to/input_data'
  type: string[]
  inputBinding:
    prefix: -i
- id: int_nanopore_fastq
  doc: "<int>: '1' for interleaved paired-end reads, '2' for separated paired-end\
    \ reads, '3' for single reads, '4' for genome assembly, '5' for nanopore fasta,\
    \ '6' for nanopore fastq"
  type: string
  inputBinding:
    prefix: -t
- id: string_algorithms_bwa
  doc: "<string>: algorithms for bwa mapping for allele mode; 'mem' for mem, 'sam'\
    \ for samse/sampe; default=mem; optional; for now we only optimized for default\
    \ 'mem' mode"
  type: string
  inputBinding:
    prefix: -b
- id: int_number_threads
  doc: '<int>: number of threads for allele mode, if p >4, only 4 threads will be
    used for assembly since the amount of extracted reads is small, default=1'
  type: string
  inputBinding:
    prefix: -p
- id: string_workflow_apply
  doc: "<string>: which workflow to apply, 'a'(raw reads allele micro-assembly), 'k'(raw\
    \ reads and genome assembly k-mer), default=a"
  type: string
  inputBinding:
    prefix: -m
- id: string_optional_specify_sample_name
  doc: '<string>: optional, to specify a sample name in the report output'
  type: string
  inputBinding:
    prefix: -n
- id: string_optional_specify_output_name
  doc: "<string>: optional, to specify an output directory name, if not set, the output\
    \ directory would be 'SeqSero_result_'+time stamp+one random number"
  type: string
  inputBinding:
    prefix: -d
- id: flag_flagged_only
  doc: "<flag>: if '-c' was flagged, SeqSero2 will only output serotype prediction\
    \ without the directory containing log files"
  type: boolean
  inputBinding:
    prefix: -c
- id: flag_flagged_not
  doc: "<flag>: if '-s' was flagged, SeqSero2 will not output header in SeqSero_result.tsv"
  type: boolean
  inputBinding:
    prefix: -s
- id: check
  doc: "<flag>: use '--check' flag to check the required dependencies"
  type: boolean
  inputBinding:
    prefix: --check
outputs: []
cwlVersion: v1.1
baseCommand:
- SeqSero2_package.py
