class: CommandLineTool
id: CollapseSeq.py.cwl
inputs:
- id: in_list_fastafastq_files
  doc: "A list of FASTA/FASTQ files containing sequences to\nprocess. (default: None)"
  type: string[]
  inputBinding:
    prefix: -s
- id: in_explicit_output_file
  doc: "Explicit output file name(s). Note, this argument\ncannot be used with the\
    \ --failed, --outdir, or\n--outname arguments. If unspecified, then the output\n\
    filename will be based on the input filename(s).\n(default: None)"
  type: string[]
  inputBinding:
    prefix: -o
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
- id: in_failed
  doc: "If specified create files containing records that fail\nprocessing. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --failed
- id: in_fast_a
  doc: "Specify to force output as FASTA rather than FASTQ.\n(default: None)"
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_delim
  doc: "DELIMITER DELIMITER\nA list of the three delimiters that separate\nannotation\
    \ blocks, field names and values, and values\nwithin a field, respectively. (default:\
    \ ('|', '=',\n','))"
  type: string?
  inputBinding:
    prefix: --delim
- id: in_maximum_number_missing
  doc: "Maximum number of missing nucleotides to consider for\ncollapsing sequences.\
    \ A sequence will be considered\nundetermined if it contains too many missing\n\
    nucleotides. (default: 0)"
  type: long?
  inputBinding:
    prefix: -n
- id: in_uf
  doc: "Specifies a set of annotation fields that must match\nfor sequences to be\
    \ considered duplicates. (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: --uf
- id: in_cf
  doc: "Specifies a set of annotation fields to copy into the\nunique sequence output.\
    \ (default: None)"
  type: string[]
  inputBinding:
    prefix: --cf
- id: in_act
  doc: "[{min,max,sum,set} ...]\nList of actions to take for each copy field which\n\
    defines how each annotation will be combined into a\nsingle value. The actions\
    \ \"min\", \"max\", \"sum\" perform\nthe corresponding mathematical operation\
    \ on numeric\nannotations. The action \"set\" collapses annotations\ninto a comma\
    \ delimited list of unique values.\n(default: None)"
  type: string?
  inputBinding:
    prefix: --act
- id: in_inner
  doc: "If specified, exclude consecutive missing characters\nat either end of the\
    \ sequence. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --inner
- id: in_keep_miss
  doc: "If specified, sequences with more missing characters\nthan the threshold set\
    \ by the -n parameter will be\nwritten to the unique sequence output file with\
    \ a\nDUPCOUNT=1 annotation. If not specified, such\nsequences will be written\
    \ to a separate file.\n(default: False)"
  type: File?
  inputBinding:
    prefix: --keepmiss
- id: in_max_f
  doc: "Specify the field whose maximum value determines the\nretained sequence; mutually\
    \ exclusive with --minf.\n(default: None)"
  type: string?
  inputBinding:
    prefix: --maxf
- id: in_minf
  doc: "Specify the field whose minimum value determines the\nretained sequence; mutually\
    \ exclusive with --minf.\n(default: None)"
  type: long?
  inputBinding:
    prefix: --minf
- id: in_collapse_unique
  doc: "unique sequences. Contains one representative from each set of\nduplicate\
    \ sequences. The retained representative is determined by\nuser defined criteria."
  type: string
  inputBinding:
    position: 0
- id: in_collapse_duplicate
  doc: "raw reads which are duplicates of the sequences retained in the\ncollapse-unique\
    \ file."
  type: string
  inputBinding:
    position: 1
- id: in_collapse_undetermined
  doc: "raw reads which were excluded from consideration due to having too\nmany N\
    \ characters in the sequence."
  type: string
  inputBinding:
    position: 2
- id: in_dup_count
  doc: "total number of sequences within the set of duplicates for each\nretained\
    \ unique sequence. Meaning, the copy number of each unique\nsequence within the\
    \ data file."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_keep_miss
  doc: "If specified, sequences with more missing characters\nthan the threshold set\
    \ by the -n parameter will be\nwritten to the unique sequence output file with\
    \ a\nDUPCOUNT=1 annotation. If not specified, such\nsequences will be written\
    \ to a separate file.\n(default: False)"
  type: File?
  outputBinding:
    glob: $(inputs.in_keep_miss)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/presto:0.6.2--py_0
cwlVersion: v1.1
baseCommand:
- CollapseSeq.py
