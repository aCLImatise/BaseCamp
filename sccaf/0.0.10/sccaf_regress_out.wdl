version 1.0

task SccafRegressOut {
  input {
    String? input_file
    String? output_file
    String? keys_to_regress
  }
  command <<<
    sccaf-regress-out \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(keys_to_regress) then ("--keys-to-regress " +  '"' + keys_to_regress + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Path to input in AnnData or Loom"
    output_file: "Path for output file for annData with regression done."
    keys_to_regress: "Keys to regress out, comma separated. They should be in the anndata object."
  }
}