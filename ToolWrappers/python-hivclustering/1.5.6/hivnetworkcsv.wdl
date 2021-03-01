version 1.0

task Hivnetworkcsv {
  input {
    File? input_csv_file_omitted
    File? uds
    File? dot
    File? cluster
    String? threshold
    File? edi
    File? old_edi
    Int? format
    Int? exclude
    File? resistance
    String? parser_parser_pattern
    File? attributes
    Boolean? compact_json
    Boolean? json
    Boolean? singletons
    File? filter
    File? sequences
    String? edge_filtering
    File? central_ities
    Boolean? edge_filter_cycles
    File? cycle_report_file
    Int? triangles
    String? contaminants
    File? contaminant_file
    Boolean? multiple_edges
    Boolean? bridges
    Boolean? no_degree_fit
    String? extract
    File? write_output_file
    File? prior
    String? auto_profile
    String? after
    String? before
    String? import_attributes
    String? sub_cluster_annotation
  }
  command <<<
    hivnetworkcsv \
      ~{if defined(input_csv_file_omitted) then ("--input " +  '"' + input_csv_file_omitted + '"') else ""} \
      ~{if defined(uds) then ("--uds " +  '"' + uds + '"') else ""} \
      ~{if defined(dot) then ("--dot " +  '"' + dot + '"') else ""} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(edi) then ("--edi " +  '"' + edi + '"') else ""} \
      ~{if defined(old_edi) then ("--old_edi " +  '"' + old_edi + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(resistance) then ("--resistance " +  '"' + resistance + '"') else ""} \
      ~{if defined(parser_parser_pattern) then ("-p " +  '"' + parser_parser_pattern + '"') else ""} \
      ~{if defined(attributes) then ("--attributes " +  '"' + attributes + '"') else ""} \
      ~{if (compact_json) then "--compact-json" else ""} \
      ~{if (json) then "--json" else ""} \
      ~{if (singletons) then "--singletons" else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(edge_filtering) then ("--edge-filtering " +  '"' + edge_filtering + '"') else ""} \
      ~{if defined(central_ities) then ("--centralities " +  '"' + central_ities + '"') else ""} \
      ~{if (edge_filter_cycles) then "--edge-filter-cycles" else ""} \
      ~{if defined(cycle_report_file) then ("--cycle-report-file " +  '"' + cycle_report_file + '"') else ""} \
      ~{if defined(triangles) then ("--triangles " +  '"' + triangles + '"') else ""} \
      ~{if defined(contaminants) then ("--contaminants " +  '"' + contaminants + '"') else ""} \
      ~{if defined(contaminant_file) then ("--contaminant-file " +  '"' + contaminant_file + '"') else ""} \
      ~{if (multiple_edges) then "--multiple-edges" else ""} \
      ~{if (bridges) then "--bridges" else ""} \
      ~{if (no_degree_fit) then "--no-degree-fit" else ""} \
      ~{if defined(extract) then ("--extract " +  '"' + extract + '"') else ""} \
      ~{if defined(write_output_file) then ("--output " +  '"' + write_output_file + '"') else ""} \
      ~{if defined(prior) then ("--prior " +  '"' + prior + '"') else ""} \
      ~{if defined(auto_profile) then ("--auto-profile " +  '"' + auto_profile + '"') else ""} \
      ~{if defined(after) then ("--after " +  '"' + after + '"') else ""} \
      ~{if defined(before) then ("--before " +  '"' + before + '"') else ""} \
      ~{if defined(import_attributes) then ("--import-attributes " +  '"' + import_attributes + '"') else ""} \
      ~{if defined(sub_cluster_annotation) then ("--subcluster-annotation " +  '"' + sub_cluster_annotation + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_csv_file_omitted: "Input CSV file with inferred genetic links (or stdin\\nif omitted). Can be specified multiple times for\\nmultiple input files (e.g. to include a reference\\ndatabase). Must be a CSV file with three columns:\\nID1,ID2,distance."
    uds: "Input CSV file with UDS data. Must be a CSV file with\\nthree columns: ID1,ID2,distance."
    dot: "Output DOT file for GraphViz (or stdout if omitted)"
    cluster: "Output a CSV file with cluster assignments for each\\nsequence"
    threshold: "Only count edges where the distance is less than this\\nthreshold. Provide comma-separated values to compute\\nsubclusters if the output mode is JSON. If -t auto is\\nspecified, a heuristic is used to determine an ad hoc\\noptimal threshold."
    edi: "A .json file with clinical information"
    old_edi: "A .csv file with legacy EDI dates"
    format: "Sequence ID format. One of AEH (ID | sample_date |\\notherfiels default), LANL (e.g. B_HXB2_K03455_1983 :\\nsubtype_country_id_year -- could have more fields),\\nregexp (match a regular expression, use the first\\ngroup as the ID), or plain (treat as sequence ID only,\\nno meta); one per input argument if specified"
    exclude: "Exclude any sequence which belongs to a cluster\\ncontaining a \\\"reference\\\" strain, defined by the year\\nof isolation. The value of this argument is an integer\\nyear (e.g. 1984) so that any sequence isolated in or\\nbefore that year (e.g. <=1983) is considered to be a\\nlab strain. This option makes sense for LANL or AEH\\ndata."
    resistance: "Load a JSON file with resistance annotation by\\nsequence"
    parser_parser_pattern: "PARSER, --parser PARSER PARSER\\nThe reg.exp pattern to split up sequence ids; only\\nused if format is regexp; format is INDEX EXPRESSION\\n(consumes two arguments)"
    attributes: "Load a CSV file with optional node attributes"
    compact_json: "Output the network report as a compact JSON object"
    json: "Output the network report as a JSON object"
    singletons: "Include singletons in JSON output"
    filter: "Only return clusters with ids listed by a newline\\nseparated supplied file."
    sequences: "Provide the MSA with sequences which were used to make\\nthe distance file. Can be specified multiple times to\\ninclude mutliple MSA files"
    edge_filtering: "Compute edge support and mark edges for removal using\\nsequence-based triangle tests (requires the -s\\nargument) and either only report them or remove the\\nedges before doing other analyses"
    central_ities: "Output a CSV file with node centralities"
    edge_filter_cycles: "Filter edges that are in cycles other than triangles"
    cycle_report_file: "Prints cycle report to specified file"
    triangles: "Maximum number of triangles to consider in each\\nfiltering pass"
    contaminants: "Screen for contaminants by marking or removing\\nsequences that cluster with any of the contaminant IDs\\n(-F option) [default is not to screen]"
    contaminant_file: "IDs of contaminant sequences"
    multiple_edges: "Permit multiple edges (e.g. different dates) to link\\nthe same pair of nodes in the network [default is to\\nchoose the one with the shortest distance]"
    bridges: "Report all bridges (edges whose removal would cause\\nthe graph to disconnect)"
    no_degree_fit: "Do not perform degree distribution fitting"
    extract: "If provided, extract all the sequences"
    write_output_file: "Write the output file to"
    prior: "When running in JSON output mode, provide a JSON file\\nstoring a previous (subset) version of the network for\\nconsistent cluster naming"
    auto_profile: "If provided supercedes most other output and inference\\nsettings; will add edges from shortest to longest and\\nreport network statistics as a function of distance\\ncutoff"
    after: "[assumes DATES are available] If provided (as\\nYYYYMMDD) then only allow EDGES that connect nodes\\nwith dates at or AFTER this date"
    before: "[assumes DATES are available] If provided (as\\nYYYYMMDD) then only allow EDGES that connect nodes\\nwith dates at or BEFORE this date"
    import_attributes: "Import node attributes from this JSON"
    sub_cluster_annotation: "SUBCLUSTER_ANNOTATION\\nAs \\\"dist\\\" \\\"field\\\"\\\". Use subcluster annotation for\\ndistance \\\"dist\\\" from node attribute \\\"field\\\"\\n"
  }
  output {
    File out_stdout = stdout()
    File out_dot = "${in_dot}"
    File out_cluster = "${in_cluster}"
    File out_central_ities = "${in_central_ities}"
    File out_write_output_file = "${in_write_output_file}"
    File out_prior = "${in_prior}"
  }
}