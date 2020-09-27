class: CommandLineTool
id: TNS.cwl
inputs:
- id: in_input
  doc: "Input CSV file with inferred genetic links (or stdin\nif omitted). Can be\
    \ specified multiple times for\nmultiple input files (e.g. to include a reference\n\
    database). Must be a CSV file with three columns:\nID1,ID2,distance."
  type: File
  inputBinding:
    prefix: --input
- id: in_uds
  doc: "Input CSV file with UDS data. Must be a CSV file with\nthree columns: ID1,ID2,distance."
  type: File
  inputBinding:
    prefix: --uds
- id: in_dot
  doc: Output DOT file for GraphViz (or stdout if omitted)
  type: File
  inputBinding:
    prefix: --dot
- id: in_cluster
  doc: "Output a CSV file with cluster assignments for each\nsequence"
  type: File
  inputBinding:
    prefix: --cluster
- id: in_threshold
  doc: "Only count edges where the distance is less than this\nthreshold. Provide\
    \ comma-separated values to compute\nsubclusters if the output mode is JSON. If\
    \ -t auto is\nspecified, a heuristic is used to determine an ad hoc\noptimal threshold."
  type: string
  inputBinding:
    prefix: --threshold
- id: in_edi
  doc: A .json file with clinical information
  type: File
  inputBinding:
    prefix: --edi
- id: in_old_edi
  doc: A .csv file with legacy EDI dates
  type: File
  inputBinding:
    prefix: --old_edi
- id: in_format
  doc: "Sequence ID format. One of AEH (ID | sample_date |\notherfiels default), LANL\
    \ (e.g. B_HXB2_K03455_1983 :\nsubtype_country_id_year -- could have more fields),\n\
    regexp (match a regular expression, use the first\ngroup as the ID), or plain\
    \ (treat as sequence ID only,\nno meta); one per input argument if specified"
  type: long
  inputBinding:
    prefix: --format
- id: in_exclude
  doc: "Exclude any sequence which belongs to a cluster\ncontaining a \"reference\"\
    \ strain, defined by the year\nof isolation. The value of this argument is an\
    \ integer\nyear (e.g. 1984) so that any sequence isolated in or\nbefore that year\
    \ (e.g. <=1983) is considered to be a\nlab strain. This option makes sense for\
    \ LANL or AEH\ndata."
  type: long
  inputBinding:
    prefix: --exclude
- id: in_resistance
  doc: "Load a JSON file with resistance annotation by\nsequence"
  type: File
  inputBinding:
    prefix: --resistance
- id: in_parser__parser
  doc: "PARSER, --parser PARSER PARSER\nThe reg.exp pattern to split up sequence ids;\
    \ only\nused if format is regexp; format is INDEX EXPRESSION\n(consumes two arguments)"
  type: string
  inputBinding:
    prefix: -p
- id: in_attributes
  doc: Load a CSV file with optional node attributes
  type: File
  inputBinding:
    prefix: --attributes
- id: in_compact_json
  doc: Output the network report as a compact JSON object
  type: boolean
  inputBinding:
    prefix: --compact-json
- id: in_json
  doc: Output the network report as a JSON object
  type: boolean
  inputBinding:
    prefix: --json
- id: in_singletons
  doc: Include singletons in JSON output
  type: boolean
  inputBinding:
    prefix: --singletons
- id: in_filter
  doc: "Only return clusters with ids listed by a newline\nseparated supplied file."
  type: File
  inputBinding:
    prefix: --filter
- id: in_sequences
  doc: "Provide the MSA with sequences which were used to make\nthe distance file.\
    \ Can be specified multiple times to\ninclude mutliple MSA files"
  type: File
  inputBinding:
    prefix: --sequences
- id: in_edge_filtering
  doc: "Compute edge support and mark edges for removal using\nsequence-based triangle\
    \ tests (requires the -s\nargument) and either only report them or remove the\n\
    edges before doing other analyses"
  type: string
  inputBinding:
    prefix: --edge-filtering
- id: in_central_ities
  doc: Output a CSV file with node centralities
  type: File
  inputBinding:
    prefix: --centralities
- id: in_edge_filter_cycles
  doc: Filter edges that are in cycles other than triangles
  type: boolean
  inputBinding:
    prefix: --edge-filter-cycles
- id: in_cycle_report_file
  doc: Prints cycle report to specified file
  type: File
  inputBinding:
    prefix: --cycle-report-file
- id: in_triangles
  doc: "Maximum number of triangles to consider in each\nfiltering pass"
  type: long
  inputBinding:
    prefix: --triangles
- id: in_contaminants
  doc: "Screen for contaminants by marking or removing\nsequences that cluster with\
    \ any of the contaminant IDs\n(-F option) [default is not to screen]"
  type: string
  inputBinding:
    prefix: --contaminants
- id: in_contaminant_file
  doc: IDs of contaminant sequences
  type: File
  inputBinding:
    prefix: --contaminant-file
- id: in_multiple_edges
  doc: "Permit multiple edges (e.g. different dates) to link\nthe same pair of nodes\
    \ in the network [default is to\nchoose the one with the shortest distance]"
  type: boolean
  inputBinding:
    prefix: --multiple-edges
- id: in_bridges
  doc: "Report all bridges (edges whose removal would cause\nthe graph to disconnect)"
  type: boolean
  inputBinding:
    prefix: --bridges
- id: in_no_degree_fit
  doc: Do not perform degree distribution fitting
  type: boolean
  inputBinding:
    prefix: --no-degree-fit
- id: in_extract
  doc: If provided, extract all the sequences
  type: string
  inputBinding:
    prefix: --extract
- id: in_output
  doc: Write the output file to
  type: File
  inputBinding:
    prefix: --output
- id: in_prior
  doc: "When running in JSON output mode, provide a JSON file\nstoring a previous\
    \ (subset) version of the network for\nconsistent cluster naming"
  type: File
  inputBinding:
    prefix: --prior
- id: in_auto_profile
  doc: "If provided supercedes most other output and inference\nsettings; will add\
    \ edges from shortest to longest and\nreport network statistics as a function\
    \ of distance\ncutoff"
  type: string
  inputBinding:
    prefix: --auto-profile
- id: in_after
  doc: "[assumes DATES are available] If provided (as\nYYYYMMDD) then only allow EDGES\
    \ that connect nodes\nwith dates at or AFTER this date"
  type: string
  inputBinding:
    prefix: --after
- id: in_before
  doc: "[assumes DATES are available] If provided (as\nYYYYMMDD) then only allow EDGES\
    \ that connect nodes\nwith dates at or BEFORE this date"
  type: string
  inputBinding:
    prefix: --before
- id: in_import_attributes
  doc: Import node attributes from this JSON
  type: string
  inputBinding:
    prefix: --import-attributes
- id: in_sub_cluster_annotation
  doc: "SUBCLUSTER_ANNOTATION\nAs \"dist\" \"field\"\". Use subcluster annotation\
    \ for\ndistance \"dist\" from node attribute \"field\"\n"
  type: string
  inputBinding:
    prefix: --subcluster-annotation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dot
  doc: Output DOT file for GraphViz (or stdout if omitted)
  type: File
  outputBinding:
    glob: $(inputs.in_dot)
- id: out_cluster
  doc: "Output a CSV file with cluster assignments for each\nsequence"
  type: File
  outputBinding:
    glob: $(inputs.in_cluster)
- id: out_central_ities
  doc: Output a CSV file with node centralities
  type: File
  outputBinding:
    glob: $(inputs.in_central_ities)
- id: out_output
  doc: Write the output file to
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_prior
  doc: "When running in JSON output mode, provide a JSON file\nstoring a previous\
    \ (subset) version of the network for\nconsistent cluster naming"
  type: File
  outputBinding:
    glob: $(inputs.in_prior)
cwlVersion: v1.1
baseCommand:
- TNS
