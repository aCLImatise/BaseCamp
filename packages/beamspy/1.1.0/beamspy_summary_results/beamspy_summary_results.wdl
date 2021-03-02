version 1.0

task BeamspySummaryresults {
  input {
    String? peak_list
    String? intensity_matrix
    File? output_file_summary
    File? pdf
    String? db
    String? sep
    Boolean? single_row
    Boolean? single_column
    Float? n_digits_mz
    String? convert_rt
  }
  command <<<
    beamspy summary_results \
      ~{if defined(peak_list) then ("--peaklist " +  '"' + peak_list + '"') else ""} \
      ~{if defined(intensity_matrix) then ("--intensity-matrix " +  '"' + intensity_matrix + '"') else ""} \
      ~{if defined(output_file_summary) then ("--output " +  '"' + output_file_summary + '"') else ""} \
      ~{if defined(pdf) then ("--pdf " +  '"' + pdf + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""} \
      ~{if (single_row) then "--single-row" else ""} \
      ~{if (single_column) then "--single-column" else ""} \
      ~{if defined(n_digits_mz) then ("--ndigits-mz " +  '"' + n_digits_mz + '"') else ""} \
      ~{if defined(convert_rt) then ("--convert-rt " +  '"' + convert_rt + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/beamspy:1.1.0--py_0"
  }
  parameter_meta {
    peak_list: "Tab-delimited peaklist"
    intensity_matrix: "Tab-delimited intensity matrix."
    output_file_summary: "Output file for the summary"
    pdf: "Output pdf file for the summary plots"
    db: "Sqlite database that contains the results from the\\nprevious steps."
    sep: "Values on each line of the output are separated by\\nthis character."
    single_row: "Concatenate the annotations for each spectral feature\\nand represent in a single row."
    single_column: "Concatenate the annotations for each spectral feature\\nand keep seperate columns for molecular formula,\\nadduct, name, etc."
    n_digits_mz: "Digits after the decimal point for m/z values."
    convert_rt: "Covert the retention time to seconds or minutes. An\\nadditional column will be added.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_summary = "${in_output_file_summary}"
    File out_pdf = "${in_pdf}"
  }
}