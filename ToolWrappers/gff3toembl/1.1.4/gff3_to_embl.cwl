class: CommandLineTool
id: gff3_to_embl.cwl
inputs:
- id: in_authors
  doc: Authors (in the EMBL RA line style)
  type: string?
  inputBinding:
    prefix: --authors
- id: in_title
  doc: Title of paper (in the EMBL RT line style)
  type: string?
  inputBinding:
    prefix: --title
- id: in_publication
  doc: "Publication or journal name (in the EMBL RL line\nstyle)"
  type: string?
  inputBinding:
    prefix: --publication
- id: in_genome_type
  doc: Genome type (linear/circular)
  type: string?
  inputBinding:
    prefix: --genome_type
- id: in_classification
  doc: Classification (PROK/UNC/..)
  type: string?
  inputBinding:
    prefix: --classification
- id: in_output_filename
  doc: Output filename
  type: File?
  inputBinding:
    prefix: --output_filename
- id: in_locus_tag
  doc: Overwrite the locus tag in the annotation file
  type: File?
  inputBinding:
    prefix: --locus_tag
- id: in_translation_table
  doc: Translation table
  type: string?
  inputBinding:
    prefix: --translation_table
- id: in_chromosome_list
  doc: "Create a chromosome list file, and use the supplied\nname"
  type: File?
  inputBinding:
    prefix: --chromosome_list
- id: in_organism
  doc: Organism
  type: string
  inputBinding:
    position: 0
- id: in_taxonid
  doc: Taxon id
  type: string
  inputBinding:
    position: 1
- id: in_project_accession
  doc: Accession number for the project
  type: string
  inputBinding:
    position: 2
- id: in_description
  doc: Genus species subspecies strain of organism
  type: string
  inputBinding:
    position: 3
- id: in_file
  doc: GFF3 filename
  type: File
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename
  doc: Output filename
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- gff3_to_embl
