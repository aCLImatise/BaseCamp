version 1.0

task Ms2pip {
  input {
    File? config_file
    File? spectrum_file
    File? vector_file
    Boolean? retention_time
    Boolean? correlations
    Boolean? match_spectra
    Boolean? tableau
    Int? num_cpu
    String? sql_db_uri
  }
  command <<<
    ms2pip \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if defined(spectrum_file) then ("--spectrum-file " +  '"' + spectrum_file + '"') else ""} \
      ~{if defined(vector_file) then ("--vector-file " +  '"' + vector_file + '"') else ""} \
      ~{if (retention_time) then "--retention-time" else ""} \
      ~{if (correlations) then "--correlations" else ""} \
      ~{if (match_spectra) then "--match-spectra" else ""} \
      ~{if (tableau) then "--tableau" else ""} \
      ~{if defined(num_cpu) then ("--num-cpu " +  '"' + num_cpu + '"') else ""} \
      ~{if defined(sql_db_uri) then ("--sqldb-uri " +  '"' + sql_db_uri + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ms2pip:3.6.3--py38h4a8c8d9_0"
  }
  parameter_meta {
    config_file: "Configuration file: text-based (extensions `.txt`,\\n`.config`, or `.ms2pip`) or TOML (extension `.toml`)."
    spectrum_file: ".mgf MS2 spectrum file (optional)"
    vector_file: "write feature vectors to FILE.{pkl,h5} (optional)"
    retention_time: "add retention time predictions (requires DeepLC python\\npackage)"
    correlations: "calculate correlations (if MGF is given)"
    match_spectra: "match peptides to spectra based on predicted spectra\\n(if MGF is given)"
    tableau: "create Tableau Reader file"
    num_cpu: "number of CPUs to use (default: all available)"
    sql_db_uri: "use sql database of observed spectra instead of MGF\\nfiles\\n"
  }
  output {
    File out_stdout = stdout()
  }
}