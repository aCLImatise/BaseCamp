class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pgcgap.cwl
inputs:
- id: universal_code
  doc: Universal code
  type: string
  inputBinding:
    position: 0
- id: vertebrate_mitochondrial_code
  doc: Vertebrate mitochondrial code
  type: string
  inputBinding:
    position: 1
- id: yeast_mitochondrial_code
  doc: Yeast mitochondrial code
  type: string
  inputBinding:
    position: 2
- id: mold_protozoan_code
  doc: Mold, Protozoan, and Coelenterate Mitochondrial code and Mycoplasma/Spiroplasma
    code
  type: string
  inputBinding:
    position: 3
- id: invertebrate_mitochondrial
  doc: Invertebrate mitochondrial
  type: string
  inputBinding:
    position: 4
- id: ciliate_dasycladacean_hexamita
  doc: Ciliate, Dasycladacean and Hexamita nuclear code
  type: string
  inputBinding:
    position: 5
- id: echinoderm_flatworm_mitochondrial
  doc: Echinoderm and Flatworm mitochondrial code
  type: string
  inputBinding:
    position: 6
- id: euplotid_nuclear_code
  doc: Euplotid nuclear code
  type: string
  inputBinding:
    position: 7
- id: bacterial_archaeal_plant
  doc: Bacterial, archaeal and plant plastid code ( Default )
  type: string
  inputBinding:
    position: 8
- id: alternative_yeast_nuclear
  doc: Alternative yeast nuclear code
  type: string
  inputBinding:
    position: 9
- id: ascidian_mitochondrial_code
  doc: Ascidian mitochondrial code
  type: string
  inputBinding:
    position: 10
- id: alternative_flatworm_mitochondrial
  doc: Alternative flatworm mitochondrial code
  type: string
  inputBinding:
    position: 11
- id: blepharisma_nuclear_code
  doc: Blepharisma nuclear code
  type: string
  inputBinding:
    position: 12
- id: chlorophycean_mitochondrial_code
  doc: Chlorophycean mitochondrial code
  type: string
  inputBinding:
    position: 13
- id: trematode_mitochondrial_code
  doc: Trematode mitochondrial code
  type: string
  inputBinding:
    position: 14
- id: scenedesmus_obliquus_code
  doc: Scenedesmus obliquus mitochondrial code
  type: string
  inputBinding:
    position: 15
- id: thraustochytrium_mitochondrial_code
  doc: Thraustochytrium mitochondrial code
  type: string
  inputBinding:
    position: 16
outputs: []
cwlVersion: v1.1
baseCommand:
- pgcgap
