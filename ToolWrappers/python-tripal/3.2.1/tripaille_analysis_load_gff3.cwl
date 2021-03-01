class: CommandLineTool
id: tripaille_analysis_load_gff3.cwl
inputs:
- id: in_organism
  doc: Organism common name or abbreviation
  type: string?
  inputBinding:
    prefix: --organism
- id: in_organism_id
  doc: Organism ID
  type: long?
  inputBinding:
    prefix: --organism_id
- id: in_analysis
  doc: Analysis name
  type: string?
  inputBinding:
    prefix: --analysis
- id: in_analysis_id
  doc: Analysis ID
  type: long?
  inputBinding:
    prefix: --analysis_id
- id: in_import_mode
  doc: "Import mode (add_only=existing features won't\nbe touched, update=existing\
    \ features will be\nupdated and obsolete attributes kept)')\n[default: update]"
  type: string?
  inputBinding:
    prefix: --import_mode
- id: in_target_organism
  doc: "In case of Target attribute in the GFF3,\nchoose the organism abbreviation\
    \ or common\nname to which target sequences belong. Select\nthis only if target\
    \ sequences belong to a\ndifferent organism than the one specified with\n--organism-id.\
    \ And only choose an organism\nhere if all of the target sequences belong to\n\
    the same species. If the targets in the GFF\nfile belong to multiple different\
    \ species then\nthe organism must be specified using the\n'target_organism=genus:species'\
    \ attribute in\nthe GFF file.')"
  type: File?
  inputBinding:
    prefix: --target_organism
- id: in_target_organism_id
  doc: "In case of Target attribute in the GFF3,\nchoose the organism ID to which\
    \ target\nsequences belong. Select this only if target\nsequences belong to a\
    \ different organism than\nthe one specified with --organism-id. And only\nchoose\
    \ an organism here if all of the target\nsequences belong to the same species.\
    \ If the\ntargets in the GFF file belong to multiple\ndifferent species then the\
    \ organism must be\nspecified using the\n'target_organism=genus:species' attribute\
    \ in\nthe GFF file.')"
  type: long?
  inputBinding:
    prefix: --target_organism_id
- id: in_target_type
  doc: "In case of Target attribute in the GFF3, if\nthe unique name for a target\
    \ sequence is not\nunique (e.g. a protein and an mRNA have the\nsame name) then\
    \ you must specify the type for\nall targets in the GFF file. If the targets\n\
    are of different types then the type must be\nspecified using the 'target_type=type'\n\
    attribute in the GFF file. This must be a\nvalid Sequence Ontology (SO) term.')"
  type: File?
  inputBinding:
    prefix: --target_type
- id: in_target_create
  doc: "In case of Target attribute in the GFF3, if\nthe target feature cannot be\
    \ found, create one\nusing the organism and type specified above,\nor using the\
    \ 'target_organism' and\n'target_type' fields specified in the GFF\nfile. Values\
    \ specified in the GFF file take\nprecedence over those specified above.')"
  type: boolean?
  inputBinding:
    prefix: --target_create
- id: in_start_line
  doc: "The line in the GFF file where importing\nshould start"
  type: long?
  inputBinding:
    prefix: --start_line
- id: in_landmark_type
  doc: "A Sequence Ontology type for the landmark\nsequences in the GFF fie (e.g.\
    \ 'chromosome')."
  type: string?
  inputBinding:
    prefix: --landmark_type
- id: in_alt_id_attr
  doc: "When ID attribute is absent, specify which\nother attribute can uniquely identify\
    \ the\nfeature."
  type: string?
  inputBinding:
    prefix: --alt_id_attr
- id: in_create_organism
  doc: "Create organisms when encountering organism\nattribute (these lines will be\
    \ skip otherwise)"
  type: boolean?
  inputBinding:
    prefix: --create_organism
- id: in_re_mrna
  doc: Regular expression for the mRNA name
  type: string?
  inputBinding:
    prefix: --re_mrna
- id: in_re_protein
  doc: Replacement string for the protein name
  type: string?
  inputBinding:
    prefix: --re_protein
- id: in_job_name
  doc: Name of the job
  type: string?
  inputBinding:
    prefix: --job_name
- id: in_no_wait
  doc: Do not wait for job to complete
  type: boolean?
  inputBinding:
    prefix: --no_wait
- id: in_gff
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tripaille
- analysis
- load_gff3
