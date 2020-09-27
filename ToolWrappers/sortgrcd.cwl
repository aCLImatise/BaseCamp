class: CommandLineTool
id: sortgrcd.cwl
inputs:
- id: in_cn
  doc: ':    Minimum % of coverage (0-100)'
  type: boolean
  inputBinding:
    prefix: -CN
- id: in_en
  doc: ':    Report only the best (N=1) or all (N=2) results per gene locus (1)'
  type: boolean
  inputBinding:
    prefix: -EN
- id: in_fn
  doc: ':    Filter Level (0 -> 3: no -> stringent)'
  type: boolean
  inputBinding:
    prefix: -FN
- id: in_gn
  doc: ':    Genetic code (0: universal)'
  type: boolean
  inputBinding:
    prefix: -GN
- id: in_hn
  doc: ':    Minimum spaln score'
  type: boolean
  inputBinding:
    prefix: -HN
- id: in_jn
  doc: ':    Minimum ORF length (300)'
  type: boolean
  inputBinding:
    prefix: -JN
- id: in_maximum_total_number_missmatches
  doc: ':    Maximum total number of missmatches'
  type: boolean
  inputBinding:
    prefix: -MN
- id: in_maximum_total_number_noncanonical
  doc: ':    Maximum total number of non-canonical boundaries'
  type: boolean
  inputBinding:
    prefix: -NN
- id: in_on
  doc: ":    Output format. 0:Gff3, 3:BED, 4:Native, 5:Intron,\n6:cDNA, 7:translate,\
    \ 8:CDS, 15:unique intron"
  type: boolean
  inputBinding:
    prefix: -ON
- id: in_pn
  doc: ':    Minimum Overall % identity (0-100)'
  type: boolean
  inputBinding:
    prefix: -PN
- id: in_maximum_total_number_unpaired
  doc: ':    Maximum total number of unpaired bases in gaps'
  type: boolean
  inputBinding:
    prefix: -UN
- id: in_ln
  doc: ':    Number of residues per line for -O6 or -O7 (60)'
  type: boolean
  inputBinding:
    prefix: -lN
- id: in_maximum_allowed_missmatches
  doc: ':    Maximum allowed missmatches at both exon boundaries'
  type: boolean
  inputBinding:
    prefix: -mN
- id: in__allow_boundary
  doc: ':    allow non-canonical boundary? [0: no; 1: AT-AN; 2: 1bp mismatch; 3: any]'
  type: boolean
  inputBinding:
    prefix: -nN
- id: in_maximum_allowed_bases
  doc: ':    Maximum allowed unpaired bases in gaps at both exon boundaries'
  type: boolean
  inputBinding:
    prefix: -uN
- id: in_gs
  doc: ':    Specify the .grp file name'
  type: boolean
  inputBinding:
    prefix: -gS
- id: in_sa
  doc: ':    sort chromosomes in the alphabetical order of identifier (default)'
  type: boolean
  inputBinding:
    prefix: -Sa
- id: in_sb
  doc: ':    sort chromosomes in the order of abundance mapped on them'
  type: boolean
  inputBinding:
    prefix: -Sb
- id: in_sc
  doc: ':    sort chromosomes in the order of apparence in the genome db'
  type: boolean
  inputBinding:
    prefix: -Sc
- id: in_sr
  doc: ':    sort records mapped on minus strand in the reverse order of genomic positions'
  type: boolean
  inputBinding:
    prefix: -Sr
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sortgrcd
