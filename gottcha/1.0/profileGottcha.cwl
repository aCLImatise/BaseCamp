class: CommandLineTool
id: profileGottcha.pl.cwl
inputs:
- id: genome_vitals
  doc: =/home/me/indir/genomeVitals2.dmp          --treeFile=/home/me/indir/speciesTreeGI2.dmp
  type: boolean
  inputBinding:
    prefix: --genomeVitals
- id: trim_stats
  doc: =/home/me/indir/datasetXYZ_fixL30.stats.txt   --rank=all
  type: boolean
  inputBinding:
    prefix: --trimStats
- id: prefix
  doc: --outdir=/home/me/outdir
  type: string
  inputBinding:
    prefix: --prefix
- id: genome_vitals
  doc: =/home/me/indir/genomeVitals2.dmp          --treeFile=/home/me/indir/speciesTreeGI2.dmp
  type: boolean
  inputBinding:
    prefix: --genomeVitals
- id: trim_stats
  doc: =/home/me/indir/datasetXYZ_fixL30.stats.txt   --rank=all
  type: boolean
  inputBinding:
    prefix: --trimStats
- id: prefix
  doc: --outdir=/home/me/outdir
  type: string
  inputBinding:
    prefix: --prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- profileGottcha.pl
