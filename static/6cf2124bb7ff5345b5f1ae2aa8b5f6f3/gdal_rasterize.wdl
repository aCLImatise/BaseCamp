version 1.0

task GdalRasterize {
  input {
    String? b
  }
  command <<<
    gdal_rasterize \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""}
  >>>
  parameter_meta {
    b: ""
  }
}