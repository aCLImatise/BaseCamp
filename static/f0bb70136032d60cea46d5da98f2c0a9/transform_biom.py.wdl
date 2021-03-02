version 1.0

task TransformBiompy {
  input {
    File? biom_table_fp
    String? transform
    String? fmt
    Boolean? gzip
    File? output_fp
  }
  command <<<
    transform_biom_py \
      ~{if defined(biom_table_fp) then ("--biom_table_fp " +  '"' + biom_table_fp + '"') else ""} \
      ~{if defined(transform) then ("--transform " +  '"' + transform + '"') else ""} \
      ~{if defined(fmt) then ("--fmt " +  '"' + fmt + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if defined(output_fp) then ("--output_fp " +  '"' + output_fp + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    biom_table_fp: "Path to the input BIOM-format table. [REQUIRED]"
    transform: "The transform to apply to the data. Default: arcsine\\nsquare root."
    fmt: "Set the output format of the BIOM table. Default is\\nHDF5."
    gzip: "Compress the output BIOM table with gzip. HDF5 BIOM\\n(v2.x) files are internally compressed by default, so\\nthis option is not needed when specifying --fmt hdf5."
    output_fp: "Output path for the transformed BIOM table.[REQUIRED]"
  }
  output {
    File out_stdout = stdout()
    File out_output_fp = "${in_output_fp}"
  }
}