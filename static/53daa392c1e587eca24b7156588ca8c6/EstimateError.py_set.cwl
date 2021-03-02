class: CommandLineTool
id: EstimateError.py_set.cwl
inputs:
- id: in_list_fastafastq_files
  doc: "A list of FASTA/FASTQ files containing sequences to\nprocess. (default: None)"
  type: string[]
  inputBinding:
    prefix: -s
- id: in_outdir
  doc: "Specify to changes the output directory to the\nlocation specified. The input\
    \ file directory is used\nif this is not specified. (default: None)"
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_out_name
  doc: "Changes the prefix of the successfully processed\noutput file to the string\
    \ specified. May not be\nspecified with multiple input files. (default: None)"
  type: File?
  inputBinding:
    prefix: --outname
- id: in_log
  doc: "Specify to write verbose logging to a file. May not be\nspecified with multiple\
    \ input files. (default: None)"
  type: File?
  inputBinding:
    prefix: --log
- id: in_delim
  doc: "DELIMITER DELIMITER\nA list of the three delimiters that separate\nannotation\
    \ blocks, field names and values, and values\nwithin a field, respectively. (default:\
    \ ('|', '=',\n','))"
  type: string?
  inputBinding:
    prefix: --delim
- id: in_nproc
  doc: "The number of simultaneous computational processes to\nexecute (CPU cores\
    \ to utilized). (default: 8)"
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_name_annotation_field
  doc: "The name of the annotation field to group sequences by\n(default: BARCODE)"
  type: string?
  inputBinding:
    prefix: -f
- id: in_minimum_number_sequences
  doc: "The minimum number of sequences needed to consider a\nset (default: 20)"
  type: long?
  inputBinding:
    prefix: -n
- id: in_mode
  doc: "Specifies which method to use to determine the\nconsensus sequence. The \"\
    freq\" method will determine\nthe consensus by nucleotide frequency at each position\n\
    and assign the most common value. The \"qual\" method\nwill weight values by their\
    \ quality scores to\ndetermine the consensus nucleotide at each position.\n(default:\
    \ freq)"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_consensus_quality_score
  doc: "Consensus quality score cut-off under which an\nambiguous character is assigned.\
    \ (default: 0)"
  type: long?
  inputBinding:
    prefix: -q
- id: in_freq
  doc: "Fraction of character occurrences under which an\nambiguous character is assigned.\
    \ (default: 0.6)"
  type: long?
  inputBinding:
    prefix: --freq
- id: in_max_div
  doc: "Specify to calculate the nucleotide diversity of each\nread group (average\
    \ pairwise error rate) and exclude\ngroups which exceed the given diversity threshold.\n\
    (default: None)\n"
  type: long?
  inputBinding:
    prefix: --maxdiv
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/presto:0.6.2--py_0
cwlVersion: v1.1
baseCommand:
- EstimateError.py
- set
