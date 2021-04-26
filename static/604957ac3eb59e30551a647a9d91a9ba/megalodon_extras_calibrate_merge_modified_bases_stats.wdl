version 1.0

task MegalodonExtrasCalibrateMergeModifiedBasesStats {
  input {
    File? out_filename
    File? overwrite
    String mod_calib_stats_fn
  }
  command <<<
    megalodon_extras calibrate merge_modified_bases_stats \
      ~{mod_calib_stats_fn} \
      ~{if defined(out_filename) then ("--out-filename " +  '"' + out_filename + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0"
  }
  parameter_meta {
    out_filename: "Filename to output calibration statistics values.\\nDefault: mod_calibration_statistics.npz"
    overwrite: "Overwrite --out-filename if it exists."
    mod_calib_stats_fn: "Modified base calibration statistics filenames."
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
    File out_overwrite = "${in_overwrite}"
  }
}