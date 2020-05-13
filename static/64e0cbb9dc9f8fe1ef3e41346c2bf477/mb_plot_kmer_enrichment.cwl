class: CommandLineTool
id: mb_plot_kmer_enrichment.cwl
inputs:
- id: input_file
  doc: PAR-CLIP file *.table
  type: string
  inputBinding:
    position: 0
- id: genome
  doc: path to genome
  type: string
  inputBinding:
    position: 1
- id: outdir
  doc: output directory
  type: string
  inputBinding:
    position: 2
- id: prefix
  doc: prefix
  type: string
  inputBinding:
    position: 3
- id: km_er
  doc: kmer-length
  type: string
  inputBinding:
    prefix: --kmer
- id: start
  doc: start index of PAR-CLIP sites
  type: string
  inputBinding:
    prefix: --start
- id: stop
  doc: stop index of PAR-CLIP sites
  type: string
  inputBinding:
    prefix: --stop
- id: width
  doc: number of nt +/- the crosslink site
  type: string
  inputBinding:
    prefix: --width
- id: key
  doc: set key that is used for PAR-CLIP site ordering
  type: string
  inputBinding:
    prefix: --key
- id: filter_gff
  doc: set path to GFF if sites should be removed that overlap with the GFF. By default
    no sites are filtered out.
  type: string
  inputBinding:
    prefix: --filterGFF
- id: a_width
  doc: number of nt that are added to the start/stop indices of the GFF annotations
  type: string
  inputBinding:
    prefix: --awidth
- id: remove
  doc: remove temporary text files
  type: boolean
  inputBinding:
    prefix: --remove
- id: verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- mb-plot-kmer-enrichment
