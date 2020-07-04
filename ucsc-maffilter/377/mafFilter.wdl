version 1.0

task MafFilter {
  input {
    Boolean? tolerate
    String? min_col
    String? min_row
    String? max_row
    Boolean? factor
    String? min_factor
    String? min_score
    File? reject
    String? need_comp
    Boolean? overlap
    File? component_filter
    File? species_filter
    File file
  }
  command <<<
    mafFilter \
      ~{file} \
      ~{true="-tolerate" false="" tolerate} \
      ~{if defined(min_col) then ("-minCol " +  '"' + min_col + '"') else ""} \
      ~{if defined(min_row) then ("-minRow " +  '"' + min_row + '"') else ""} \
      ~{if defined(max_row) then ("-maxRow " +  '"' + max_row + '"') else ""} \
      ~{true="-factor" false="" factor} \
      ~{if defined(min_factor) then ("-minFactor " +  '"' + min_factor + '"') else ""} \
      ~{if defined(min_score) then ("-minScore " +  '"' + min_score + '"') else ""} \
      ~{if defined(reject) then ("-reject " +  '"' + reject + '"') else ""} \
      ~{if defined(need_comp) then ("-needComp " +  '"' + need_comp + '"') else ""} \
      ~{true="-overlap" false="" overlap} \
      ~{if defined(component_filter) then ("-componentFilter " +  '"' + component_filter + '"') else ""} \
      ~{if defined(species_filter) then ("-speciesFilter " +  '"' + species_filter + '"') else ""}
  >>>
  parameter_meta {
    tolerate: "- Just ignore bad input rather than aborting."
    min_col: "- Filter out blocks with fewer than N columns (default 1)"
    min_row: "- Filter out blocks with fewer than N rows (default 2)"
    max_row: "- Filter out blocks with >= N rows (default 100)"
    factor: "- Filter out scores below -minFactor * (ncol**2) * nrow"
    min_factor: "- Factor to use with -minFactor (default 5)"
    min_score: "- Minimum allowed score (alternative to -minFactor)"
    reject: "- Save rejected blocks in filename"
    need_comp: "- all alignments must have species as one of the component"
    overlap: "- Reject overlapping blocks in reference (assumes ordered blocks)"
    component_filter: "- Filter out blocks without a component listed in filename "
    species_filter: "- Filter out blocks without a species listed in filename "
    file: ""
  }
}