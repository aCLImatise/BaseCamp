class: CommandLineTool
id: htsbox_pileup.cwl
inputs:
- id: f
  doc: reference genome [null]
  type: File
  inputBinding:
    prefix: -f
- id: r
  doc: region [null]
  type: string
  inputBinding:
    prefix: -r
- id: b
  doc: BED or position list file to include [null]
  type: File
  inputBinding:
    prefix: -b
- id: q
  doc: minimum base quality [0]
  type: long
  inputBinding:
    prefix: -Q
- id: q
  doc: minimum mapping quality [0]
  type: long
  inputBinding:
    prefix: -q
- id: l
  doc: minimum query length [0]
  type: long
  inputBinding:
    prefix: -l
- id: s
  doc: minimum supplementary alignment length [0]
  type: long
  inputBinding:
    prefix: -S
- id: v
  doc: ignore queries with per-base divergence >FLOAT [1]
  type: double
  inputBinding:
    prefix: -V
- id: t
  doc: ignore bases within INT-bp from either end of a read [0]
  type: long
  inputBinding:
    prefix: -T
- id: d
  doc: base quality as depth
  type: boolean
  inputBinding:
    prefix: -d
- id: s
  doc: drop alleles with depth<INT [1]
  type: long
  inputBinding:
    prefix: -s
- id: e
  doc: use '*' to mark deleted bases
  type: boolean
  inputBinding:
    prefix: -e
- id: v
  doc: show variants only
  type: boolean
  inputBinding:
    prefix: -v
- id: c
  doc: output in the VCF format (force -v)
  type: boolean
  inputBinding:
    prefix: -c
- id: c
  doc: show count of each allele on both strands
  type: boolean
  inputBinding:
    prefix: -C
- id: f
  doc: output the consensus in FASTA
  type: boolean
  inputBinding:
    prefix: -F
- id: m
  doc: majority-allele FASTA (majfa; force -F)
  type: boolean
  inputBinding:
    prefix: -M
- id: r
  doc: random-allele FASTA (randfa; force -F)
  type: boolean
  inputBinding:
    prefix: -R
- id: x
  doc: character for bases identical to the reference [ref]
  type: string
  inputBinding:
    prefix: -x
- id: d
  doc: soft mask if sumQ > avgSum+FLOAT*sqrt(avgSum) (force -F) [3.00]
  type: double
  inputBinding:
    prefix: -D
- id: u
  doc: unitig calling mode (-d -V.01 -S300 -q20 -Q3 -s5)
  type: boolean
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- htsbox
- pileup
