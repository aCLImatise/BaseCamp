class: CommandLineTool
id: akt_pedphase.cwl
inputs:
- id: in_pedigree
  doc: pedigree information in plink .fam format
  type: boolean
  inputBinding:
    prefix: --pedigree
- id: in_output_file
  doc: output file name [stdout]
  type: File
  inputBinding:
    prefix: --output-file
- id: in_output_type
  doc: 'b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed
    VCF [v]'
  type: string
  inputBinding:
    prefix: --output-type
- id: in_threads
  doc: number of compression/decompression threads to use
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_exclude_chromosome
  doc: leave these chromosomes unphased (unphased lines will still be in in output)  eg.
    -x chrM,chrY
  type: boolean
  inputBinding:
    prefix: --exclude-chromosome
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: output file name [stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- akt
- pedphase
