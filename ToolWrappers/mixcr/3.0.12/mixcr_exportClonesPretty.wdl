version 1.0

task MixcrExportClonesPretty {
  input {
    Boolean? verbose
    Int? limit_before
    String? chains
    Int? cdr_three_equals
    File? force_overwrite
    String? clone_ids
    Int? limit
    String? clonal_sequence_contains
    Int? skip
    Boolean? nw
    String outputted
  }
  command <<<
    mixcr exportClonesPretty \
      ~{outputted} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(limit_before) then ("--limitBefore " +  '"' + limit_before + '"') else ""} \
      ~{if defined(chains) then ("--chains " +  '"' + chains + '"') else ""} \
      ~{if defined(cdr_three_equals) then ("--cdr3-equals " +  '"' + cdr_three_equals + '"') else ""} \
      ~{if (force_overwrite) then "--force-overwrite" else ""} \
      ~{if defined(clone_ids) then ("--clone-ids " +  '"' + clone_ids + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(clonal_sequence_contains) then ("--clonal-sequence-contains " +  '"' + clonal_sequence_contains + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if (nw) then "-nw" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Verbose warning messages."
    limit_before: "Limit number of alignments before filtering"
    chains: "Filter export to a specific protein chain gene (e.g. TRA or IGH)."
    cdr_three_equals: "Only output clones where CDR3 (not whole clonal sequence) exactly equals to\\ngiven sequence"
    force_overwrite: "Force overwrite of output file(s)."
    clone_ids: "List of clone ids to export"
    limit: "Limit number of filtered alignments; no more than N alignments will be"
    clonal_sequence_contains: "Only output clones where target clonal sequence contains sub-sequence."
    skip: "Number of output alignments to skip"
    nw: ""
    outputted: "-nw, --no-warnings     Suppress all warning messages."
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite = "${in_force_overwrite}"
  }
}