version 1.0

task HicConvertFormat {
  input {
    Array[String] matrices
    Array[File] out_filename
    String? input_format
    String? output_format
    String? correction_name
    Boolean? correction_division
    Boolean? store_applied_correction
    String? chromosome
    Boolean? enforce_integer
    Boolean? load_raw_values
    Array[String] resolutions
    Array[File] bed_file_hic_pro
  }
  command <<<
    hicConvertFormat \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(input_format) then ("--inputFormat " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--outputFormat " +  '"' + output_format + '"') else ""} \
      ~{if defined(correction_name) then ("--correction_name " +  '"' + correction_name + '"') else ""} \
      ~{if (correction_division) then "--correction_division" else ""} \
      ~{if (store_applied_correction) then "--store_applied_correction" else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{if (enforce_integer) then "--enforce_integer" else ""} \
      ~{if (load_raw_values) then "--load_raw_values" else ""} \
      ~{if defined(resolutions) then ("--resolutions " +  '"' + resolutions + '"') else ""} \
      ~{if defined(bed_file_hic_pro) then ("--bedFileHicpro " +  '"' + bed_file_hic_pro + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hicexplorer:3.6--py_0"
  }
  parameter_meta {
    matrices: "input file(s). Could be one or many files. (default:\\nNone)"
    out_filename: "File name to save the exported matrix. (default: None)"
    input_format: "File format of the input matrix file. The following\\noptions are available: `h5` (native HiCExplorer format\\nbased on hdf5 storage format), `cool`, `hic`, `homer`,\\n`hicpro`. (default: None)"
    output_format: "Output format. The following options are available:\\n`h5` (native HiCExplorer format based on hdf5 storage\\nformat). `cool`, `ginteractions`, `homer` and `mcool`\\n(Default: cool)."
    correction_name: "Name of the column which stores the correction\\nfactors. The information about the column names can be\\nfigured out with the tool hicInfo. Option only for\\ncool input files (Default: weight)."
    correction_division: "If set, division is applied for correction. Default is\\na multiplication. Option only for cool input files.\\n(default: False)"
    store_applied_correction: "Store the applied correction and do not set correction\\nfactors. Option only for cool input files. (default:\\nFalse)"
    chromosome: "Load only one chromosome. Option only for cool input\\nfiles. (default: None)"
    enforce_integer: "Enforce datatype of counts to integer. Option only for\\ncool input files. (default: False)"
    load_raw_values: "Load only 'count' data and do not apply a correction.\\nOption only for cool input files. (default: False)"
    resolutions: "List of resolutions that should be added. (default:\\nNone)"
    bed_file_hic_pro: "Bed file(s) of hicpro file format. (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}