class: CommandLineTool
id: taxsbp.cwl
inputs:
- id: in_tabseparated_fields_sequence
  doc: "Tab-separated with the fields: sequence id <tab>\nsequence length <tab> taxonomic\
    \ id [<tab>\nspecialization]"
  type: File?
  inputBinding:
    prefix: -f
- id: in_nodesdmp_ncbi_taxonomy
  doc: nodes.dmp from NCBI Taxonomy
  type: File?
  inputBinding:
    prefix: -n
- id: in_mergeddmp_ncbi_taxonomy
  doc: merged.dmp from NCBI Taxonomy
  type: File?
  inputBinding:
    prefix: -m
- id: in_approximate_number_bins
  doc: "Approximate number of bins (estimated by total\nlength/bin number). Default:\
    \ 50 [Mutually exclusive -l]"
  type: long?
  inputBinding:
    prefix: -b
- id: in_maximum_bin_length
  doc: "Maximum bin length (in bp). Use this parameter insted\nof -b to define the\
    \ number of bins [Mutually exclusive\n-b]"
  type: long?
  inputBinding:
    prefix: -l
- id: in_fragment_sequences_accesionstartend
  doc: "Fragment sequences into pieces, output accession will\nbe modified with positions:\
    \ ACCESION/start:end"
  type: string?
  inputBinding:
    prefix: -a
- id: in_overlap_length_fragments
  doc: Overlap length between fragments [Only valid with -a]
  type: long?
  inputBinding:
    prefix: -o
- id: in_precluster_sequences_ranktaxidspecializationso
  doc: "Pre-cluster sequences into rank/taxid/specialization,\nso they won't be splitted\
    \ among bins\n[none,specialization name,taxid,species,genus,...]\nDefault: none"
  type: string?
  inputBinding:
    prefix: -p
- id: in_make_bins_ranktaxidspecialization
  doc: "Make bins rank/taxid/specialization exclusive, so bins\nwon't have mixed sequences.\
    \ When the chosen rank is not\npresent on a sequence lineage, this sequence will\
    \ be\ntaxid/specialization exclusive. [none,specialization\nname,taxid,species,genus,...]\
    \ Default: none"
  type: string?
  inputBinding:
    prefix: -r
- id: in_specialization_name_eg
  doc: "Specialization name (e.g. assembly, strain). If given,\nTaxSBP will cluster\
    \ entries on a specialized level\nafter the taxonomic id. The specialization identifier\n\
    should be provided as an extra collumn in the\ninput_file ans should respect the\
    \ taxonomic hiercharchy\n(one taxid -> multiple specializations / one\nspecialization\
    \ -> one taxid). Default: ''"
  type: string?
  inputBinding:
    prefix: -z
- id: in_previously_generated_files
  doc: "Previously generated files to be updated. Default: ''"
  type: File?
  inputBinding:
    prefix: -u
- id: in_show_programs_number
  doc: show program's version number and exit
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- taxsbp
