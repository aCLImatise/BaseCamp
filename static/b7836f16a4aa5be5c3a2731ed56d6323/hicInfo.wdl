version 1.0

task HicInfo {
  input {
    Array[String] matrices
    File? out_filename
    Boolean? no_metadata
  }
  command <<<
    hicInfo \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if (no_metadata) then "--no_metadata" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hicexplorer:3.6--py_0"
  }
  parameter_meta {
    matrices: "The matrix (or multiple matrices) to get information\\nabout. HiCExplorer supports the following file\\nformats: h5 (native HiCExplorer format) and cool."
    out_filename: "File name to save information of the matrix instead of\\nwriting it to the bash."
    no_metadata: "Do not use meta data from cooler file to display\\ninformation. This method is slower and was the default\\nuntil version 2.2 of HiCExplorer. H5 files always use\\nthis parameter."
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}