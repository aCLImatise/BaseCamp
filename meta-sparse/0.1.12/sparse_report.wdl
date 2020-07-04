version 1.0

task SparseReport {
  input {
    File? path
    String? tag
    Boolean? absolute
    String? low
    String? species_filter
    Boolean? sample_filter
    Boolean? inverse
    String workspace
  }
  command <<<
    sparse report \
      ~{workspace} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{true="--absolute" false="" absolute} \
      ~{if defined(low) then ("--low " +  '"' + low + '"') else ""} \
      ~{if defined(species_filter) then ("--speciesFilter " +  '"' + species_filter + '"') else ""} \
      ~{true="--sampleFilter" false="" sample_filter} \
      ~{true="--inverse" false="" inverse}
  >>>
  parameter_meta {
    path: "All sparse workspaces under the assigned folder will be added in automatically."
    tag: "Tag level to report, default: s. Details see documents for the seqlist format."
    absolute: "Report absolute numbers. Default: False (report percentages)"
    low: "Lower limit of percentage for a value to report. Default: 0.0"
    species_filter: "Show only species listed in the file."
    sample_filter: "Show only samples that have hits in the listed species. Default: False"
    inverse: "Inverse the output matrix such that columns are species and rows are samples."
    workspace: "Folders that contain \"SPARSE extract\" outputs. REQUIRED at least one folder."
  }
}