class: CommandLineTool
id: pan_genome_post_analysis.cwl
inputs:
- id: a
  doc: dont delete intermediate files
  type: boolean
  inputBinding:
    prefix: -a
- id: b
  doc: dont create R plots
  type: boolean
  inputBinding:
    prefix: -b
- id: c
  doc: clusters filename [_clustered.clstr]
  type: string
  inputBinding:
    prefix: -c
- id: cd
  doc: percentage of isolates a gene must be in to be core [0.99]
  type: double
  inputBinding:
    prefix: -cd
- id: d
  doc: dont split groups
  type: boolean
  inputBinding:
    prefix: -d
- id: e
  doc: add inference values to gene presence and absence spreadsheet
  type: boolean
  inputBinding:
    prefix: -e
- id: f
  doc: file of protein filenames [_fasta_files]
  type: string
  inputBinding:
    prefix: -f
- id: g
  doc: maximum number of clusters [50000]
  type: long
  inputBinding:
    prefix: -g
- id: i
  doc: file of GFF filenames [_gff_files]
  type: string
  inputBinding:
    prefix: -i
- id: m
  doc: core gene alignement with PRANK
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: fast core gene alignement with MAFFT instead of PRANK
  type: boolean
  inputBinding:
    prefix: -n
- id: o
  doc: clusters output filename [clustered_proteins]
  type: string
  inputBinding:
    prefix: -o
- id: p
  doc: output pan genome filename [pan_genome.fa]
  type: string
  inputBinding:
    prefix: -p
- id: q
  doc: allow paralogs in core alignment
  type: boolean
  inputBinding:
    prefix: -q
- id: s
  doc: output gene presence and absence filename [gene_presence_absence.csv]
  type: string
  inputBinding:
    prefix: -s
- id: t
  doc: translation table [11]
  type: long
  inputBinding:
    prefix: -t
- id: z
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -z
- id: v
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- pan_genome_post_analysis
