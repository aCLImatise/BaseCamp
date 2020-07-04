version 1.0

task ConvertTable.py {
  input {
    String? path_output_corresponds
    String? conversion
    Boolean? raw_abun
    Boolean? v
    String input_table_convert
  }
  command <<<
    convert_table.py \
      ~{input_table_convert} \
      ~{if defined(path_output_corresponds) then ("--output " +  '"' + path_output_corresponds + '"') else ""} \
      ~{if defined(conversion) then ("--conversion " +  '"' + conversion + '"') else ""} \
      ~{true="--raw_abun" false="" raw_abun} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    path_output_corresponds: "Path to output. Corresponds to folder name if multiple files are output, otherwise it will be a filename."
    conversion: "Type of conversion to perform ('contrib_to_legacy', 'humann2_unstrat_to_picrust2', 'humann2_strat_to_picrust2', 'picrust2_unstrat_to_humann2_split', 'picrust2_strat_to_humann2_split', or 'picrust2_to_humann2_merged')."
    raw_abun: "When converting to legacy contributional table output abundance (i.e. OTUAbundanceInSample column) as raw abundance rather than relative abundances (relative abundances are the default)."
    v: ""
    input_table_convert: "Input table to convert. If there are multiple input files (e.g. if multiple HUMAnN2 gene tables for different samples should be converted to a single PICRUSt2 table) then specify them all: file1 file2 file3..."
  }
}