class: CommandLineTool
id: CCMetagen_extract_seqs.py.cwl
inputs:
- id: in_l
  doc: '[-o OUTPUT_FP]'
  type: string?
  inputBinding:
    prefix: -l
- id: in_input_frags
  doc: The path to the file containing frags (decompressed)
  type: File?
  inputBinding:
    prefix: --input_frags
- id: in_input_ccme_tagen
  doc: The path to the ccmetagen result csv file
  type: File?
  inputBinding:
    prefix: --input_ccmetagen
- id: in_taxonomic_level
  doc: "Taxonomic level to merge the results. Options:\nSpecies, Genus, Family, Order,\
    \ Class, Phylum, Kingdom\nand Superkingdom"
  type: string?
  inputBinding:
    prefix: --taxonomic_level
- id: in_tax_on
  doc: "Taxon for which you want to extract sequences. Use\nquotation marks to specify\
    \ species (e.g. -t\n'Escherichia coli')"
  type: string?
  inputBinding:
    prefix: --taxon
- id: in_output_fp
  doc: "Path to the output file. Default = wanted_taxon_seqs\n"
  type: File?
  inputBinding:
    prefix: --output_fp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fp
  doc: "Path to the output file. Default = wanted_taxon_seqs\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fp)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ccmetagen:1.2.5--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- CCMetagen_extract_seqs.py
