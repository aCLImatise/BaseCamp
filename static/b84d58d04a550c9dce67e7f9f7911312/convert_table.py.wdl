version 1.0

task ConvertTablepy {
  input {
    File? path_output_corresponds
    Int? conversion
    Boolean? raw_abun
    Boolean? v
    String input_table_convert
  }
  command <<<
    convert_table_py \
      ~{input_table_convert} \
      ~{if defined(path_output_corresponds) then ("--output " +  '"' + path_output_corresponds + '"') else ""} \
      ~{if defined(conversion) then ("--conversion " +  '"' + conversion + '"') else ""} \
      ~{if (raw_abun) then "--raw_abun" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    path_output_corresponds: "Path to output. Corresponds to folder name if multiple\\nfiles are output, otherwise it will be a filename."
    conversion: "Type of conversion to perform ('contrib_to_legacy',\\n'humann2_unstrat_to_picrust2',\\n'humann2_strat_to_picrust2',\\n'picrust2_unstrat_to_humann2_split',\\n'picrust2_strat_to_humann2_split', or\\n'picrust2_to_humann2_merged')."
    raw_abun: "When converting to legacy contributional table output\\nabundance (i.e. OTUAbundanceInSample column) as raw\\nabundance rather than relative abundances (relative\\nabundances are the default)."
    v: ""
    input_table_convert: "Input table to convert. If there are multiple input\\nfiles (e.g. if multiple HUMAnN2 gene tables for\\ndifferent samples should be converted to a single\\nPICRUSt2 table) then specify them all: file1 file2\\nfile3..."
  }
  output {
    File out_stdout = stdout()
    File out_path_output_corresponds = "${in_path_output_corresponds}"
  }
}