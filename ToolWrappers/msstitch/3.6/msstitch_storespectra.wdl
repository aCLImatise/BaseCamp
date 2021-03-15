version 1.0

task MsstitchStorespectra {
  input {
    File? dbfile
    File? output_file
    Array[String] spectra
    Array[String] set_names
  }
  command <<<
    msstitch storespectra \
      ~{if defined(dbfile) then ("--dbfile " +  '"' + dbfile + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(spectra) then ("--spectra " +  '"' + spectra + '"') else ""} \
      ~{if defined(set_names) then ("--setnames " +  '"' + set_names + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msstitch:3.6--py_0"
  }
  parameter_meta {
    dbfile: "Database lookup file"
    output_file: "Output file"
    spectra: "Spectra files in mzML format. Multiple files can be\\nspecified, if order is important, e.g. when matching\\nthem with quant data, the order will be their input\\norder at the command line."
    set_names: "Names of biological sets. Can be specified with\\nquotation marks if spaces are used\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}