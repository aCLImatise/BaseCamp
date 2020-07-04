version 1.0

task PyprophetExportCompound {
  input {
    File? in
    File? out
    Boolean? format
    Boolean? csv
    Float? max_rs_peak_group_q_value
  }
  command <<<
    pyprophet export-compound \
      ~{if defined(in) then ("--in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{true="--format" false="" format} \
      ~{true="--csv" false="" csv} \
      ~{if defined(max_rs_peak_group_q_value) then ("--max_rs_peakgroup_qvalue " +  '"' + max_rs_peak_group_q_value + '"') else ""}
  >>>
  parameter_meta {
    in: "PyProphet input file.  [required]"
    out: "Output TSV/CSV (matrix, legacy_merged) file."
    format: "[matrix|legacy_merged|score_plots] Export format, either matrix, legacy_merged (PyProphet) or score_plots format. [default: legacy_merged]"
    csv: "/ --no-csv                Export CSV instead of TSV file.  [default: False]"
    max_rs_peak_group_q_value: "[format: matrix/legacy] Filter results to maximum run-specific peak group-level q-value.  [default: 0.05]"
  }
}