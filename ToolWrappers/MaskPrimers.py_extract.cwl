class: CommandLineTool
id: MaskPrimers.py_extract.cwl
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
  type: File
  inputBinding:
    prefix: --outdir
- id: in_out_name
  doc: "Changes the prefix of the successfully processed\noutput file to the string\
    \ specified. May not be\nspecified with multiple input files. (default: None)"
  type: File
  inputBinding:
    prefix: --outname
- id: in_log
  doc: "Specify to write verbose logging to a file. May not be\nspecified with multiple\
    \ input files. (default: None)"
  type: File
  inputBinding:
    prefix: --log
- id: in_failed
  doc: "If specified create files containing records that fail\nprocessing. (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --failed
- id: in_fast_a
  doc: "Specify to force output as FASTA rather than FASTQ.\n(default: None)"
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_delim
  doc: "DELIMITER DELIMITER\nA list of the three delimiters that separate\nannotation\
    \ blocks, field names and values, and values\nwithin a field, respectively. (default:\
    \ ('|', '=',\n','))"
  type: string
  inputBinding:
    prefix: --delim
- id: in_nproc
  doc: "The number of simultaneous computational processes to\nexecute (CPU cores\
    \ to utilized). (default: 8)"
  type: long
  inputBinding:
    prefix: --nproc
- id: in_start
  doc: "The starting position of the sequence region to\nextract. (default: 0)"
  type: long
  inputBinding:
    prefix: --start
- id: in_len
  doc: 'The length of the sequence to extract. (default: None)'
  type: long
  inputBinding:
    prefix: --len
- id: in_rev_pr
  doc: "Specify to extract from the tail end of the sequence\nwith the start position\
    \ relative to the end of the\nsequence. (default: False)"
  type: boolean
  inputBinding:
    prefix: --revpr
- id: in_mode
  doc: "Specifies the action to take with the sequence region.\nThe \"cut\" mode will\
    \ remove the region. The \"mask\" mode\nwill replace the specified region with\
    \ Ns. The \"trim\"\nmode will remove the sequence preceding the specified\nregion,\
    \ but leave the region intact. The \"tag\" mode\nwill leave the input sequence\
    \ unmodified. (default:\nmask)"
  type: string
  inputBinding:
    prefix: --mode
- id: in_barcode
  doc: "Specify to remove the sequence preceding the extracted\nregion and annotate\
    \ the read with that sequence.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --barcode
- id: in_bf
  doc: "Name of the barcode annotation field. (default:\nBARCODE)"
  type: string
  inputBinding:
    prefix: --bf
- id: in_pf
  doc: "Name of the annotation field containing the extracted\nsequence region. (default:\
    \ PRIMER)\n"
  type: string
  inputBinding:
    prefix: --pf
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MaskPrimers.py
- extract
