class: CommandLineTool
id: PairSeq.py.cwl
inputs:
- id: in_ordered_list_containingheadprimary
  doc: "An ordered list of FASTA/FASTQ files containing\nhead/primary sequences. (default:\
    \ None)"
  type: long[]
  inputBinding:
    prefix: '-1'
- id: in_ordered_list_containingtailsecondary
  doc: "An ordered list of FASTA/FASTQ files containing\ntail/secondary sequences.\
    \ (default: None)"
  type: long[]
  inputBinding:
    prefix: '-2'
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
- id: in_one_f
  doc: "The annotation fields to copy from file 1 records into\nfile 2 records. If\
    \ a copied annotation already exists\nin a file 2 record, then the annotations\
    \ copied from\nfile 1 will be added to the front of the existing\nannotation.\
    \ (default: None)"
  type: long[]
  inputBinding:
    prefix: --1f
- id: in_two_f
  doc: "The annotation fields to copy from file 2 records into\nfile 1 records. If\
    \ a copied annotation already exists\nin a file 1 record, then the annotations\
    \ copied from\nfile 2 will be added to the end of the existing\nannotation. (default:\
    \ None)"
  type: long[]
  inputBinding:
    prefix: --2f
- id: in_act
  doc: "The collapse actions to take on all fields copied\nbetween files to combine\
    \ duplicate fields into a\nsingle value. The actions \"min\", \"max\", \"sum\"\
    \ perform\nthe corresponding mathematical operation on numeric\nannotations. The\
    \ action \"set\" collapses annotations\ninto a comma delimited list of unique\
    \ values. The\naction \"cat\" concatenates the values together into a\nsingle\
    \ string. Only applies if the field already\nexists in the header before being\
    \ copying from the\nother file. (default: None)"
  type: string?
  inputBinding:
    prefix: --act
- id: in_coord
  doc: "The format of the sequence identifier which defines\nshared coordinate information\
    \ across mate pairs.\n(default: presto)"
  type: string?
  inputBinding:
    prefix: --coord
- id: in_pair_pass
  doc: successfully paired reads with modified annotations.
  type: string
  inputBinding:
    position: 0
- id: in_pair_fail
  doc: raw reads that could not be assigned to a mate-pair.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/presto:0.6.2--py_0
cwlVersion: v1.1
baseCommand:
- PairSeq.py
