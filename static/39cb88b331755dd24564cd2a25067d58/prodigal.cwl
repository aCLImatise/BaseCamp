class: CommandLineTool
id: prodigal.cwl
inputs:
- id: a
  doc: ':  Write protein translations to the selected file.'
  type: boolean
  inputBinding:
    prefix: -a
- id: c
  doc: ':  Closed ends.  Do not allow genes to run off edges.'
  type: boolean
  inputBinding:
    prefix: -c
- id: d
  doc: ':  Write nucleotide sequences of genes to the selected file.'
  type: boolean
  inputBinding:
    prefix: -d
- id: f
  doc: ':  Select output format (gbk, gff, or sco).  Default is gbk.'
  type: boolean
  inputBinding:
    prefix: -f
- id: g
  doc: ':  Specify a translation table to use (default 11).'
  type: boolean
  inputBinding:
    prefix: -g
- id: i
  doc: ':  Specify FASTA/Genbank input file (default reads from stdin).'
  type: boolean
  inputBinding:
    prefix: -i
- id: m
  doc: ":  Treat runs of N as masked sequence; don't build genes across them."
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: ':  Bypass Shine-Dalgarno trainer and force a full motif scan.'
  type: boolean
  inputBinding:
    prefix: -n
- id: o
  doc: ':  Specify output file (default writes to stdout).'
  type: boolean
  inputBinding:
    prefix: -o
- id: p
  doc: ':  Select procedure (single or meta).  Default is single.'
  type: boolean
  inputBinding:
    prefix: -p
- id: q
  doc: ':  Run quietly (suppress normal stderr output).'
  type: boolean
  inputBinding:
    prefix: -q
- id: s
  doc: ':  Write all potential genes (with scores) to the selected file.'
  type: boolean
  inputBinding:
    prefix: -s
- id: t
  doc: ':  Write a training file (if none exists); otherwise, read and use the specified
    training file.'
  type: boolean
  inputBinding:
    prefix: -t
- id: v
  doc: ':  Print version number and exit.'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- prodigal
