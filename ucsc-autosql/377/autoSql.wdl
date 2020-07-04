version 1.0

task AutoSql {
  input {
    Boolean? dblink
    Boolean? add_bin
    Boolean? with_null
    Boolean? default_zeros
    Boolean? django
    Boolean? json
    String spec_file
    String out_root
  }
  command <<<
    autoSql \
      ~{spec_file} \
      ~{out_root} \
      ~{true="-dbLink" false="" dblink} \
      ~{true="-addBin" false="" add_bin} \
      ~{true="-withNull" false="" with_null} \
      ~{true="-defaultZeros" false="" default_zeros} \
      ~{true="-django" false="" django} \
      ~{true="-json" false="" json}
  >>>
  parameter_meta {
    dblink: "- optionally generates code to execute queries and updates of the table."
    add_bin: "- Add an initial bin field and index it as (chrom,bin)"
    with_null: "- optionally generates code and .sql to enable applications to accept and load data into objects with potential 'missing data' (NULL in SQL) situations."
    default_zeros: "- will put zero and or empty string as default value"
    django: "- generate method to output object as django model Python code"
    json: "- generate method to output the object in JSON (JavaScript) format."
    spec_file: ""
    out_root: ""
  }
}