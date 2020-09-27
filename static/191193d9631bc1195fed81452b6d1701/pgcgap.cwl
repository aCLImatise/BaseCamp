class: CommandLineTool
id: pgcgap.cwl
inputs:
- id: in_for_thresholds_
  doc: for thresholds 0.5-0.6, -n 4 for
  type: long
  inputBinding:
    prefix: -n
- id: in_roar_y
  doc: '[--OrthoF]                    Identify orthologous protein sequence'
  type: string
  inputBinding:
    position: 0
- id: in_families
  doc: '[--ANI]                       Compute whole-genome Average Nucleotide'
  type: string
  inputBinding:
    position: 1
- id: in_genes
  doc: '[--STREE]                     Construct a phylogenetic tree based on'
  type: string
  inputBinding:
    position: 0
- id: in_euplotid_nuclear_code
  doc: Euplotid nuclear code
  type: long
  inputBinding:
    position: 0
- id: in_bacterial_archaeal_plant
  doc: Bacterial, archaeal and plant plastid code ( Default )
  type: long
  inputBinding:
    position: 1
- id: in_alternative_yeast_nuclear
  doc: Alternative yeast nuclear code
  type: long
  inputBinding:
    position: 2
- id: in_ascidian_mitochondrial_code
  doc: Ascidian mitochondrial code
  type: long
  inputBinding:
    position: 3
- id: in_alternative_flatworm_mitochondrial
  doc: Alternative flatworm mitochondrial code
  type: long
  inputBinding:
    position: 4
- id: in_blepharisma_nuclear_code
  doc: Blepharisma nuclear code
  type: long
  inputBinding:
    position: 5
- id: in_chlorophycean_mitochondrial_code
  doc: Chlorophycean mitochondrial code
  type: long
  inputBinding:
    position: 6
- id: in_trematode_mitochondrial_code
  doc: Trematode mitochondrial code
  type: long
  inputBinding:
    position: 7
- id: in_scenedesmus_obliquus_mitochondrial
  doc: Scenedesmus obliquus mitochondrial code
  type: long
  inputBinding:
    position: 8
- id: in_thraustochytrium_mitochondrial_code
  doc: Thraustochytrium mitochondrial code
  type: long
  inputBinding:
    position: 9
- id: in_programs
  doc: "[--abyss-bin (PATH)]          Path to abyss binary file. Default tries\nif\
    \ abyss is in PATH;"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pgcgap
