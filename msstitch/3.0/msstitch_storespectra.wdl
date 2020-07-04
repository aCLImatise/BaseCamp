version 1.0

task MsstitchStorespectra {
  input {
    String? dbfile
    String? output_file
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
  parameter_meta {
    dbfile: "Database lookup file"
    output_file: "Output file"
    spectra: "Spectra files in mzML format. Multiple files can be specified, if order is important, e.g. when matching them with quant data, the order will be their input order at the command line."
    set_names: "Names of biological sets. Can be specified with quotation marks if spaces are used"
  }
}