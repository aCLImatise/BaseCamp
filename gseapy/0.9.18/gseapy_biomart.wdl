version 1.0

task GseapyBiomart {
  input {
    File? value__filter
    String? attributes
    File? ofile
    String? dataset
    String? host
    String? mart
    Boolean? verbose
    String value
  }
  command <<<
    gseapy biomart \
      ~{value} \
      ~{if defined(value__filter) then ("-f " +  '"' + value__filter + '"') else ""} \
      ~{if defined(attributes) then ("--attributes " +  '"' + attributes + '"') else ""} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""} \
      ~{if defined(dataset) then ("--dataset " +  '"' + dataset + '"') else ""} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""} \
      ~{if defined(mart) then ("--mart " +  '"' + mart + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    value__filter: "VALUE, --filter NAME VALUE\\nWhich filter to use. Input filter name, and value. If\\nmulti-value required, separate each value by comma. If\\nvalue is a txt file, then one ID per row, exclude\\nheader."
    attributes: "Which attribute(s) to retrieve. Separate each attr by\\ncomma."
    ofile: "Output file name"
    dataset: "Which dataset to use. Default: hsapiens_gene_ensembl"
    host: "Which host to use. Select from {'www.ensembl.org',\\n'asia.ensembl.org', 'useast.ensembl.org'}."
    mart: "Which mart to use. Default: ENSEMBL_MART_ENSEMBL."
    verbose: "Increase output verbosity, print out progress of your\\njob\\n"
    value: ""
  }
  output {
    File out_stdout = stdout()
    File out_ofile = "${in_ofile}"
  }
}