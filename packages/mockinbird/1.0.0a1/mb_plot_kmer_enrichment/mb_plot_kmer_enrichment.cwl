class: CommandLineTool
id: ../../../mb_plot_kmer_enrichment.cwl
inputs:
- id: in_km_er
  doc: kmer-length
  type: long
  inputBinding:
    prefix: --kmer
- id: in_start
  doc: start index of PAR-CLIP sites
  type: string
  inputBinding:
    prefix: --start
- id: in_stop
  doc: stop index of PAR-CLIP sites
  type: string
  inputBinding:
    prefix: --stop
- id: in_width
  doc: number of nt +/- the crosslink site
  type: long
  inputBinding:
    prefix: --width
- id: in_key
  doc: set key that is used for PAR-CLIP site ordering
  type: string
  inputBinding:
    prefix: --key
- id: in_filter_gff
  doc: "set path to GFF if sites should be removed that\noverlap with the GFF. By\
    \ default no sites are filtered\nout."
  type: File
  inputBinding:
    prefix: --filterGFF
- id: in_a_width
  doc: "number of nt that are added to the start/stop indices\nof the GFF annotations"
  type: long
  inputBinding:
    prefix: --awidth
- id: in_remove
  doc: remove temporary text files
  type: boolean
  inputBinding:
    prefix: --remove
- id: in_verbose
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_filter_gff
  doc: "set path to GFF if sites should be removed that\noverlap with the GFF. By\
    \ default no sites are filtered\nout."
  type: File
  outputBinding:
    glob: $(inputs.in_filter_gff)
cwlVersion: v1.1
baseCommand:
- mb-plot-kmer-enrichment
