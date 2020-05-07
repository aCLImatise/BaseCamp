class: CommandLineTool
id: MaskPrimers.py_extract.cwl
inputs:
- id: s
  doc: 'A list of FASTA/FASTQ files containing sequences to process. (default: None)'
  type: string[]
  inputBinding:
    prefix: -s
- id: o
  doc: 'Explicit output file name(s). Note, this argument cannot be used with the
    --failed, --outdir, or --outname arguments. If unspecified, then the output filename
    will be based on the input filename(s). (default: None)'
  type: string[]
  inputBinding:
    prefix: -o
- id: outdir
  doc: 'Specify to changes the output directory to the location specified. The input
    file directory is used if this is not specified. (default: None)'
  type: string
  inputBinding:
    prefix: --outdir
- id: out_name
  doc: 'Changes the prefix of the successfully processed output file to the string
    specified. May not be specified with multiple input files. (default: None)'
  type: string
  inputBinding:
    prefix: --outname
- id: log
  doc: 'Specify to write verbose logging to a file. May not be specified with multiple
    input files. (default: None)'
  type: string
  inputBinding:
    prefix: --log
- id: failed
  doc: 'If specified create files containing records that fail processing. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --failed
- id: fast_a
  doc: 'Specify to force output as FASTA rather than FASTQ. (default: None)'
  type: boolean
  inputBinding:
    prefix: --fasta
- id: delim
  doc: "DELIMITER DELIMITER A list of the three delimiters that separate annotation\
    \ blocks, field names and values, and values within a field, respectively. (default:\
    \ ('|', '=', ','))"
  type: string
  inputBinding:
    prefix: --delim
- id: nproc
  doc: 'The number of simultaneous computational processes to execute (CPU cores to
    utilized). (default: 8)'
  type: string
  inputBinding:
    prefix: --nproc
- id: start
  doc: 'The starting position of the sequence region to extract. (default: 0)'
  type: string
  inputBinding:
    prefix: --start
- id: len
  doc: 'The length of the sequence to extract. (default: None)'
  type: long
  inputBinding:
    prefix: --len
- id: rev_pr
  doc: 'Specify to extract from the tail end of the sequence with the start position
    relative to the end of the sequence. (default: False)'
  type: boolean
  inputBinding:
    prefix: --revpr
- id: mode
  doc: 'Specifies the action to take with the sequence region. The "cut" mode will
    remove the region. The "mask" mode will replace the specified region with Ns.
    The "trim" mode will remove the sequence preceding the specified region, but leave
    the region intact. The "tag" mode will leave the input sequence unmodified. (default:
    mask)'
  type: string
  inputBinding:
    prefix: --mode
- id: barcode
  doc: 'Specify to remove the sequence preceding the extracted region and annotate
    the read with that sequence. (default: False)'
  type: boolean
  inputBinding:
    prefix: --barcode
- id: bf
  doc: 'Name of the barcode annotation field. (default: BARCODE)'
  type: string
  inputBinding:
    prefix: --bf
- id: pf
  doc: 'Name of the annotation field containing the extracted sequence region. (default:
    PRIMER)'
  type: string
  inputBinding:
    prefix: --pf
outputs: []
cwlVersion: v1.1
baseCommand:
- MaskPrimers.py
- extract
