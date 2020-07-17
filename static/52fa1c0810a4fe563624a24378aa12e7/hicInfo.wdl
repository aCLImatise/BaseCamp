version 1.0

task HicInfo {
  input {
    Array[String] matrices
    String? out_filename
    Boolean? no_metadata
  }
  command <<<
    hicInfo \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{true="--no_metadata" false="" no_metadata}
  >>>
  parameter_meta {
    matrices: "The matrix (or multiple matrices) to get information about. HiCExplorer supports the following file formats: h5 (native HiCExplorer format) and cool."
    out_filename: "File name to save information of the matrix instead of writing it to the bash."
    no_metadata: "Do not use meta data from cooler file to display information. This method is slower and was the default until version 2.2 of HiCExplorer. H5 files always use this parameter."
  }
}