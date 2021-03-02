version 1.0

task MixcrExportAlignmentsPretty {
  input {
    String? filter
    Boolean? verbose
    Boolean? gene
    Int? limit_before
    String? chains
    Boolean? descriptions
    Int? cdr_three_equals
    File? force_overwrite
    String? feature
    String? read_ids
    Int? limit
    String? read_contains
    Int? skip
    Boolean? top
    Boolean? nw
    Boolean? a_dft
    String outputted
  }
  command <<<
    mixcr exportAlignmentsPretty \
      ~{outputted} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (gene) then "--gene" else ""} \
      ~{if defined(limit_before) then ("--limit-before " +  '"' + limit_before + '"') else ""} \
      ~{if defined(chains) then ("--chains " +  '"' + chains + '"') else ""} \
      ~{if (descriptions) then "--descriptions" else ""} \
      ~{if defined(cdr_three_equals) then ("--cdr3-equals " +  '"' + cdr_three_equals + '"') else ""} \
      ~{if (force_overwrite) then "--force-overwrite" else ""} \
      ~{if defined(feature) then ("--feature " +  '"' + feature + '"') else ""} \
      ~{if defined(read_ids) then ("--read-ids " +  '"' + read_ids + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(read_contains) then ("--read-contains " +  '"' + read_contains + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if (top) then "--top" else ""} \
      ~{if (nw) then "-nw" else ""} \
      ~{if (a_dft) then "-adft" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    filter: "Custom filter"
    verbose: "Verbose warning messages."
    gene: "Output full gene sequence"
    limit_before: "Limit number of alignments before filtering"
    chains: "Filter export to a specific protein chain gene (e.g. TRA or IGH)."
    descriptions: "Print descriptions"
    cdr_three_equals: "Output only alignments where CDR3 exactly equals to given sequence"
    force_overwrite: "Force overwrite of output file(s)."
    feature: "Output only alignments which contain a corresponding gene feature"
    read_ids: "List of read ids to export"
    limit: "Limit number of filtered alignments; no more than N alignments will be"
    read_contains: "Output only alignments where target read contains a given substring"
    skip: "Number of output alignments to skip"
    top: "Output only top hits"
    nw: ""
    a_dft: ""
    outputted: "-nw, --no-warnings     Suppress all warning messages."
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite = "${in_force_overwrite}"
  }
}