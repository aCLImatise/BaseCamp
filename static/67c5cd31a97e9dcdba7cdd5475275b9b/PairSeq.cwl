class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/PairSeq.py.cwl
inputs:
- id: ordered_list_headprimary
  doc: 'An ordered list of FASTA/FASTQ files containing head/primary sequences. (default:
    None)'
  type: string[]
  inputBinding:
    prefix: '-1'
- id: ordered_list_tailsecondary
  doc: 'An ordered list of FASTA/FASTQ files containing tail/secondary sequences.
    (default: None)'
  type: string[]
  inputBinding:
    prefix: '-2'
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
- id: one_f
  doc: 'The annotation fields to copy from file 1 records into file 2 records. If
    a copied annotation already exists in a file 2 record, then the annotations copied
    from file 1 will be added to the front of the existing annotation. (default: None)'
  type: string[]
  inputBinding:
    prefix: --1f
- id: two_f
  doc: 'The annotation fields to copy from file 2 records into file 1 records. If
    a copied annotation already exists in a file 1 record, then the annotations copied
    from file 2 will be added to the end of the existing annotation. (default: None)'
  type: string[]
  inputBinding:
    prefix: --2f
- id: act
  doc: 'The collapse actions to take on all fields copied between files to combine
    duplicate fields into a single value. The actions "min", "max", "sum" perform
    the corresponding mathematical operation on numeric annotations. The action "set"
    collapses annotations into a comma delimited list of unique values. The action
    "cat" concatenates the values together into a single string. Only applies if the
    field already exists in the header before being copying from the other file. (default:
    None)'
  type: string
  inputBinding:
    prefix: --act
- id: coord
  doc: 'The format of the sequence identifier which defines shared coordinate information
    across mate pairs. (default: presto)'
  type: string
  inputBinding:
    prefix: --coord
- id: pair_pass
  doc: successfully paired reads with modified annotations.
  type: string
  inputBinding:
    position: 0
- id: pair_fail
  doc: raw reads that could not be assigned to a mate-pair.
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- PairSeq.py
