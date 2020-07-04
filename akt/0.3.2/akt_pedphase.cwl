class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/akt_pedphase.cwl
inputs:
- id: pedigree
  doc: pedigree information in plink .fam format
  type: boolean
  inputBinding:
    prefix: --pedigree
- id: output_file
  doc: output file name [stdout]
  type: File
  inputBinding:
    prefix: --output-file
- id: output_type
  doc: 'b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed
    VCF [v]'
  type: string
  inputBinding:
    prefix: --output-type
- id: threads
  doc: number of compression/decompression threads to use
  type: boolean
  inputBinding:
    prefix: --threads
- id: exclude_chromosome
  doc: leave these chromosomes unphased (unphased lines will still be in in output)  eg.
    -x chrM,chrY
  type: boolean
  inputBinding:
    prefix: --exclude-chromosome
outputs: []
cwlVersion: v1.1
baseCommand:
- akt
- pedphase
