version 1.0

task Smog2016 {
  input {
    String? input_file_defined
    String? in_format
    String? base_name_extension
    String? out_format
    Boolean? write_metadata_metrics
    Boolean? no_gzip
    String? pdb_file
    String? threshold
    String? threads
    Boolean? thin
  }
  command <<<
    smog2016 \
      ~{if defined(input_file_defined) then ("--input " +  '"' + input_file_defined + '"') else ""} \
      ~{if defined(in_format) then ("--informat " +  '"' + in_format + '"') else ""} \
      ~{if defined(base_name_extension) then ("--output " +  '"' + base_name_extension + '"') else ""} \
      ~{if defined(out_format) then ("--outformat " +  '"' + out_format + '"') else ""} \
      ~{true="--meta" false="" write_metadata_metrics} \
      ~{true="--no-gzip" false="" no_gzip} \
      ~{if defined(pdb_file) then ("--pdb_file " +  '"' + pdb_file + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--thin" false="" thin}
  >>>
  parameter_meta {
    input_file_defined: "Input file, if not defined the STDIN is used"
    in_format: "Input format. When using STDIN this must be specified."
    base_name_extension: "Base name for output file (no extension). If not defined then SDTOUT is used for the structures and output is used as base name of the other files."
    out_format: "Output format. Defaults to 'sdf'."
    write_metadata_metrics: "Write metadata and metrics files"
    no_gzip: "Do not compress the output (STDOUT is never compressed"
    pdb_file: "PDB file for scoring"
    threshold: "The maximum score to allow"
    threads: "Number of threads to used. Default is the number of cores"
    thin: "Thin output mode"
  }
}