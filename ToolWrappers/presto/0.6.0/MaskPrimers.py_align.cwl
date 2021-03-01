class: CommandLineTool
id: MaskPrimers.py_align.cwl
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
- id: in_nproc
  doc: "The number of simultaneous computational processes to\nexecute (CPU cores\
    \ to utilized). (default: 8)"
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_fasta_file_containing
  doc: "A FASTA file containing primer sequences. (default:\nNone)"
  type: File?
  inputBinding:
    prefix: -p
- id: in_max_error
  doc: 'Maximum allowable error rate. (default: 0.2)'
  type: long?
  inputBinding:
    prefix: --maxerror
- id: in_maxlen
  doc: "Length of the sequence window to scan for primers.\n(default: 50)"
  type: long?
  inputBinding:
    prefix: --maxlen
- id: in_gap
  doc: "GAP_PENALTY\nA list of two positive values defining the gap open\nand gap\
    \ extension penalties for aligning the primers.\nNote: the error rate is calculated\
    \ as the percentage\nof mismatches from the primer sequence with gap\npenalties\
    \ reducing the match count accordingly; this\nmay lead to error rates that differ\
    \ from strict\nmismatch percentage when gaps are present in the\nalignment. (default:\
    \ (1, 1))"
  type: long?
  inputBinding:
    prefix: --gap
- id: in_rev_pr
  doc: "Specify to match the tail-end of the sequence against\nthe reverse complement\
    \ of the primers. This also\nreverses the behavior of the --maxlen argument, such\n\
    that the search window begins at the tail-end of the\nsequence. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --revpr
- id: in_skip_rc
  doc: "Specify to prevent checking of sample reverse\ncomplement sequences. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --skiprc
- id: in_mode
  doc: "Specifies the action to take with the primer sequence.\nThe \"cut\" mode will\
    \ remove both the primer region and\nthe preceding sequence. The \"mask\" mode\
    \ will replace\nthe primer region with Ns and remove the preceding\nsequence.\
    \ The \"trim\" mode will remove the region\npreceding the primer, but leave the\
    \ primer region\nintact. The \"tag\" mode will leave the input sequence\nunmodified.\
    \ (default: mask)"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_barcode
  doc: "Specify to annotate reads sequences with barcode\nsequences (unique molecular\
    \ identifiers) found\npreceding the primer. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --barcode
- id: in_bf
  doc: "Name of the barcode annotation field. (default:\nBARCODE)"
  type: string?
  inputBinding:
    prefix: --bf
- id: in_pf
  doc: "Name of the annotation field containing the primer\nname. (default: PRIMER)\n"
  type: string?
  inputBinding:
    prefix: --pf
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- MaskPrimers.py
- align
