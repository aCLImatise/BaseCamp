class: CommandLineTool
id: CollapseSeq.py.cwl
inputs:
- id: collapse_unique
  doc: unique sequences. Contains one representative from each set of duplicate sequences.
    The retained representative is determined by user defined criteria.
  type: string
  inputBinding:
    position: 0
- id: collapse_duplicate
  doc: raw reads which are duplicates of the sequences retained in the collapse-unique
    file.
  type: string
  inputBinding:
    position: 1
- id: collapse_undetermined
  doc: raw reads which were excluded from consideration due to having too many N characters
    in the sequence.
  type: string
  inputBinding:
    position: 2
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
- id: inner
  doc: 'If specified, exclude consecutive missing characters at either end of the
    sequence. (default: False)'
  type: boolean
  inputBinding:
    prefix: --inner
- id: keep_miss
  doc: 'If specified, sequences with more missing characters than the threshold set
    by the -n parameter will be written to the unique sequence output file with a
    DUPCOUNT=1 annotation. If not specified, such sequences will be written to a separate
    file. (default: False)'
  type: boolean
  inputBinding:
    prefix: --keepmiss
- id: max_f
  doc: 'Specify the field whose maximum value determines the retained sequence; mutually
    exclusive with --minf. (default: None)'
  type: long
  inputBinding:
    prefix: --maxf
- id: minf
  doc: 'Specify the field whose minimum value determines the retained sequence; mutually
    exclusive with --minf. (default: None)'
  type: long
  inputBinding:
    prefix: --minf
outputs: []
cwlVersion: v1.1
baseCommand:
- CollapseSeq.py
