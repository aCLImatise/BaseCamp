version 1.0

task PyprophetExportcompound {
  input {
    File? in
    File? out
    Boolean? format
    Boolean? no_csv
    Float? max_rs_peak_group_q_value
  }
  command <<<
    pyprophet export_compound \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (format) then "--format" else ""} \
      ~{if (no_csv) then "--no-csv" else ""} \
      ~{if defined(max_rs_peak_group_q_value) then ("--max_rs_peakgroup_qvalue " +  '"' + max_rs_peak_group_q_value + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "PyProphet input file.  [required]"
    out: "Output TSV/CSV (matrix, legacy_merged) file."
    format: "[matrix|legacy_merged|score_plots]\\nExport format, either matrix, legacy_merged\\n(PyProphet) or score_plots format.\\n[default: legacy_merged]"
    no_csv: "Export CSV instead of TSV file.  [default:\\nFalse]"
    max_rs_peak_group_q_value: "[format: matrix/legacy] Filter results to\\nmaximum run-specific peak group-level\\nq-value.  [default: 0.05]"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}