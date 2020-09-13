version 1.0

task ScelvisConvert {
  input {
    File? input_dir
    File? about_md
    File? markers
    File? path_had_write
    String? format
    Boolean? use_raw
    Boolean? split_species
    Boolean? split_samples
    Int? n_markers
    Boolean? verbose
  }
  command <<<
    scelvis convert \
      ~{if defined(input_dir) then ("--input-dir " +  '"' + input_dir + '"') else ""} \
      ~{if defined(about_md) then ("--about-md " +  '"' + about_md + '"') else ""} \
      ~{if defined(markers) then ("--markers " +  '"' + markers + '"') else ""} \
      ~{if defined(path_had_write) then ("--output " +  '"' + path_had_write + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (use_raw) then "--use-raw" else ""} \
      ~{if (split_species) then "--split-species" else ""} \
      ~{if (split_samples) then "--split-samples" else ""} \
      ~{if defined(n_markers) then ("--nmarkers " +  '"' + n_markers + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    input_dir: "path to input/pipeline output directory"
    about_md: "Path to about.md file to embed in the resulting .h5ad\\nfile"
    markers: "Path to markers.tsv file to embed in the resulting\\n.h5ad file"
    path_had_write: "Path to the .h5ad file to write to"
    format: "input format"
    use_raw: "Do not normalize expression values (use raw counts)"
    split_species: "Split species"
    split_samples: "split samples according to summary.json file produced\\nby cellranger aggr"
    n_markers: "Save top n markers per cluster [10]"
    verbose: "Enable verbose output"
  }
  output {
    File out_stdout = stdout()
  }
}