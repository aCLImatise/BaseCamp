class: CommandLineTool
id: pal2nal.pl.cwl
inputs:
- id: in_output
  doc: "(clustal|paml|fasta|codon)\nOutput format; default = clustal"
  type: boolean?
  inputBinding:
    prefix: -output
- id: in_block_only
  doc: "Show only user specified blocks\n'#' under CLUSTAL alignment (see example)"
  type: boolean?
  inputBinding:
    prefix: -blockonly
- id: in_no_gap
  doc: remove columns with gaps and inframe stop codons
  type: boolean?
  inputBinding:
    prefix: -nogap
- id: in_no_mismatch
  doc: "remove mismatched codons (mismatch between\npep and cDNA) from the output"
  type: boolean?
  inputBinding:
    prefix: -nomismatch
- id: in_codon_table
  doc: "N\n1  Universal code (default)\n2  Vertebrate mitochondrial code\n3  Yeast\
    \ mitochondrial code\n4  Mold, Protozoan, and Coelenterate Mitochondrial code\n\
    and Mycoplasma/Spiroplasma code\n5  Invertebrate mitochondrial\n6  Ciliate, Dasycladacean\
    \ and Hexamita nuclear code\n9  Echinoderm and Flatworm mitochondrial code"
  type: boolean?
  inputBinding:
    prefix: -codontable
- id: in_html
  doc: HTML output (only for the web server)
  type: boolean?
  inputBinding:
    prefix: -html
- id: in_no_stderr
  doc: No STDERR messages (only for the web server)
  type: boolean?
  inputBinding:
    prefix: -nostderr
- id: in_euplotid_nuclear_code
  doc: Euplotid nuclear code
  type: long
  inputBinding:
    position: 0
- id: in_bacterial_archaeal_plant
  doc: Bacterial, archaeal and plant plastid code
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
- id: in_scenedesmus_obliquus_code
  doc: Scenedesmus obliquus mitochondrial code
  type: long
  inputBinding:
    position: 8
- id: in_thraustochytrium_mitochondrial_code
  doc: Thraustochytrium mitochondrial code
  type: long
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pal2nal.pl
