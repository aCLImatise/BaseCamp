class: CommandLineTool
id: loadGenome.pl.cwl
inputs:
- id: in_name
  doc: (i.e. hg19, tair10, etc.)
  type: long?
  inputBinding:
    prefix: -name
- id: in_fast_a
  doc: (Single genome sequence, preferrabley soft masked, unzipped)
  type: File?
  inputBinding:
    prefix: -fasta
- id: in_gtf
  doc: "(Transcript annotation in gtf format, -gff/-gff3 to use them)\n(Always best\
    \ to use a gtf file whenever possible, gffs can be organized differently...)"
  type: File?
  inputBinding:
    prefix: -gtf
- id: in_org
  doc: <organism name, ok to use 'null'>
  type: boolean?
  inputBinding:
    prefix: -org
- id: in_force
  doc: (Overwrite any existing genome with the same name)
  type: boolean?
  inputBinding:
    prefix: -force
- id: in_promoters
  doc: (Create promoter set with genome and gtf files)
  type: string?
  inputBinding:
    prefix: -promoters
- id: in_id
  doc: '(options: gene, refseq, unigene, ensembl, or custom, default: custom)'
  type: string?
  inputBinding:
    prefix: -id
- id: in_version
  doc: "(Assign version, versions starting with 'v' are managed\nby the configureHomer.pl\
    \ script and my be overwritten, default: custom)"
  type: string?
  inputBinding:
    prefix: -version
- id: in_gid
  doc: (Use gene_id instead of transcript_id to identify the transcripts from GTF
    files)
  type: boolean?
  inputBinding:
    prefix: -gid
- id: in_tid
  doc: (Use transcript_id instead of gene_id to identify the transcripts from GTF
    files, default)
  type: boolean?
  inputBinding:
    prefix: -tid
- id: in_ensembl_repeats
  doc: (gff3 annotations from ensembl usually have repeat definitions too)
  type: File?
  inputBinding:
    prefix: -ensemblRepeats
- id: in_required_parameters_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- loadGenome.pl
