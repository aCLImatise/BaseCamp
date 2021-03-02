version 1.0

task DatafunkProcessGisaidData {
  input {
    String? input_json
    String? input_metadata
    File? output_fast_a
    File? output_metadata
    File? exclude_file
    Boolean? exclude_uk
    Boolean? exclude_undated
    Boolean? include_subsampled
    Boolean? include_omitted_file
  }
  command <<<
    datafunk process_gisaid_data \
      ~{if defined(input_json) then ("--input-json " +  '"' + input_json + '"') else ""} \
      ~{if defined(input_metadata) then ("--input-metadata " +  '"' + input_metadata + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if defined(output_metadata) then ("--output-metadata " +  '"' + output_metadata + '"') else ""} \
      ~{if defined(exclude_file) then ("--exclude-file " +  '"' + exclude_file + '"') else ""} \
      ~{if (exclude_uk) then "--exclude-uk" else ""} \
      ~{if (exclude_undated) then "--exclude-undated" else ""} \
      ~{if (include_subsampled) then "--include-subsampled" else ""} \
      ~{if (include_omitted_file) then "--include-omitted-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    input_json: "Gisaid json data"
    input_metadata: "previous metadata (can be 'False')"
    output_fast_a: "fasta format file to write."
    output_metadata: "metadata file to write."
    exclude_file: "A file that contains (anywhere) EPI_ISL_###### IDs to\\nexclude (can provide many files, e.g. -e FILE1 -e\\nFILE2 ...)"
    exclude_uk: "Excludes GISAID entries from England, Ireland,\\nScotland or Wales from being written to fasta (default\\nis to include them)"
    exclude_undated: "Excludes GISAID entries with an incomplete date from\\nbeing written to fasta (default is to include them)"
    include_subsampled: "Write GISAID entries previously flagged as duplicated\\nto fasta (default is to exclude them)"
    include_omitted_file: "Write GISAID entries excluded in --exclude-file FILE\\nto fasta (default is to exclude them)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}