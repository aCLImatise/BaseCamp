version 1.0

task HicConvertFormat {
  input {
    Array[String] matrices
    Array[String] out_filename
    String? input_format
    String? output_format
    String? correction_name
    Boolean? correction_division
    Boolean? store_applied_correction
    String? chromosome
    Boolean? enforce_integer
    Boolean? load_raw_values
    Array[String] resolutions
    Array[String] bed_file_hic_pro
  }
  command <<<
    hicConvertFormat \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(input_format) then ("--inputFormat " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--outputFormat " +  '"' + output_format + '"') else ""} \
      ~{if defined(correction_name) then ("--correction_name " +  '"' + correction_name + '"') else ""} \
      ~{true="--correction_division" false="" correction_division} \
      ~{true="--store_applied_correction" false="" store_applied_correction} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{true="--enforce_integer" false="" enforce_integer} \
      ~{true="--load_raw_values" false="" load_raw_values} \
      ~{if defined(resolutions) then ("--resolutions " +  '"' + resolutions + '"') else ""} \
      ~{if defined(bed_file_hic_pro) then ("--bedFileHicpro " +  '"' + bed_file_hic_pro + '"') else ""}
  >>>
  parameter_meta {
    matrices: "input file(s). Could be one or many files. (default: None)"
    out_filename: "File name to save the exported matrix. (default: None)"
    input_format: "File format of the input matrix file. The following options are available: `h5` (native HiCExplorer format based on hdf5 storage format), `cool`, `hic`, `homer`, `hicpro`. (default: None)"
    output_format: "Output format. The following options are available: `h5` (native HiCExplorer format based on hdf5 storage format). `cool` and `ginteractions`. (default: cool)"
    correction_name: "Name of the column which stores the correction factors. The information about the column names can be figured out with the tool hicInfo. Option only for cool input files. (default: weight)"
    correction_division: "If set, division is applied for correction. Default is a multiplication. Option only for cool input files. (default: False)"
    store_applied_correction: "Store the applied correction and do not set correction factors. Option only for cool input files. (default: False)"
    chromosome: "Load only one chromosome. Option only for cool input files. (default: None)"
    enforce_integer: "Enforce datatype of counts to integer. Option only for cool input files. (default: False)"
    load_raw_values: "Load only 'count' data and do not apply a correction. Option only for cool input files. (default: False)"
    resolutions: "List of resolutions that should be added. (default: None)"
    bed_file_hic_pro: "Bed file(s) of hicpro file format. (default: None)"
  }
}