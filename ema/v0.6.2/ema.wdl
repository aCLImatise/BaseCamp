version 1.0

task Ema {
  input {
    String? specify_barcode_whitelist
    String? specify_output_prefix
    String count_vertical_line_preproc_vertical_line_align_vertical_line_help
  }
  command <<<
    ema \
      ~{count_vertical_line_preproc_vertical_line_align_vertical_line_help} \
      ~{if defined(specify_barcode_whitelist) then ("-w " +  '"' + specify_barcode_whitelist + '"') else ""} \
      ~{if defined(specify_output_prefix) then ("-o " +  '"' + specify_output_prefix + '"') else ""}
  >>>
  parameter_meta {
    specify_barcode_whitelist: ": specify barcode whitelist [required]"
    specify_output_prefix: ": specify output prefix [required]"
    count_vertical_line_preproc_vertical_line_align_vertical_line_help: ""
  }
}