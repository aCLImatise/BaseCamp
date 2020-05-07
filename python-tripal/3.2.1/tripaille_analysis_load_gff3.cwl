class: CommandLineTool
id: tripaille_analysis_load_gff3.cwl
inputs:
- id: organism
  doc: Organism common name or abbreviation
  type: string
  inputBinding:
    prefix: --organism
- id: organism_id
  doc: Organism ID
  type: long
  inputBinding:
    prefix: --organism_id
- id: analysis
  doc: Analysis name
  type: string
  inputBinding:
    prefix: --analysis
- id: analysis_id
  doc: Analysis ID
  type: long
  inputBinding:
    prefix: --analysis_id
- id: import_mode
  doc: "Import mode (add_only=existing features won't be touched, update=existing\
    \ features will be updated and obsolete attributes kept)') [default: update]"
  type: string
  inputBinding:
    prefix: --import_mode
- id: target_organism
  doc: In case of Target attribute in the GFF3, choose the organism abbreviation or
    common name to which target sequences belong. Select this only if target sequences
    belong to a different organism than the one specified with --organism-id. And
    only choose an organism here if all of the target sequences belong to the same
    species. If the targets in the GFF file belong to multiple different species then
    the organism must be specified using the 'target_organism=genus:species' attribute
    in the GFF file.')
  type: string
  inputBinding:
    prefix: --target_organism
- id: target_organism_id
  doc: In case of Target attribute in the GFF3, choose the organism ID to which target
    sequences belong. Select this only if target sequences belong to a different organism
    than the one specified with --organism-id. And only choose an organism here if
    all of the target sequences belong to the same species. If the targets in the
    GFF file belong to multiple different species then the organism must be specified
    using the 'target_organism=genus:species' attribute in the GFF file.')
  type: long
  inputBinding:
    prefix: --target_organism_id
- id: target_type
  doc: In case of Target attribute in the GFF3, if the unique name for a target sequence
    is not unique (e.g. a protein and an mRNA have the same name) then you must specify
    the type for all targets in the GFF file. If the targets are of different types
    then the type must be specified using the 'target_type=type' attribute in the
    GFF file. This must be a valid Sequence Ontology (SO) term.')
  type: string
  inputBinding:
    prefix: --target_type
- id: target_create
  doc: In case of Target attribute in the GFF3, if the target feature cannot be found,
    create one using the organism and type specified above, or using the 'target_organism'
    and 'target_type' fields specified in the GFF file. Values specified in the GFF
    file take precedence over those specified above.')
  type: boolean
  inputBinding:
    prefix: --target_create
- id: start_line
  doc: The line in the GFF file where importing should start
  type: long
  inputBinding:
    prefix: --start_line
- id: landmark_type
  doc: A Sequence Ontology type for the landmark sequences in the GFF fie (e.g. 'chromosome').
  type: string
  inputBinding:
    prefix: --landmark_type
- id: alt_id_attr
  doc: When ID attribute is absent, specify which other attribute can uniquely identify
    the feature.
  type: string
  inputBinding:
    prefix: --alt_id_attr
- id: create_organism
  doc: Create organisms when encountering organism attribute (these lines will be
    skip otherwise)
  type: boolean
  inputBinding:
    prefix: --create_organism
- id: re_mrna
  doc: Regular expression for the mRNA name
  type: string
  inputBinding:
    prefix: --re_mrna
- id: re_protein
  doc: Replacement string for the protein name
  type: string
  inputBinding:
    prefix: --re_protein
- id: job_name
  doc: Name of the job
  type: string
  inputBinding:
    prefix: --job_name
- id: no_wait
  doc: Do not wait for job to complete
  type: boolean
  inputBinding:
    prefix: --no_wait
outputs: []
cwlVersion: v1.1
baseCommand:
- tripaille
- analysis
- load_gff3
