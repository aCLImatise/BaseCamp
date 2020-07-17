version 1.0

task GseapyBiomart {
  input {
    String? value__filter
    String? attributes
    String? ofile
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
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    value__filter: "VALUE, --filter NAME VALUE Which filter to use. Input filter name, and value. If multi-value required, separate each value by comma. If value is a txt file, then one ID per row, exclude header."
    attributes: "Which attribute(s) to retrieve. Separate each attr by comma."
    ofile: "Output file name"
    dataset: "Which dataset to use. Default: hsapiens_gene_ensembl"
    host: "Which host to use. Select from {'www.ensembl.org', 'asia.ensembl.org', 'useast.ensembl.org'}."
    mart: "Which mart to use. Default: ENSEMBL_MART_ENSEMBL."
    verbose: "Increase output verbosity, print out progress of your job"
    value: ""
  }
}