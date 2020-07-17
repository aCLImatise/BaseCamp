version 1.0

task BedExtendRanges {
  input {
    Boolean? host
    Boolean? user
    Boolean? password
    Boolean? tab
    String? verbose
    String database
    Int length
    File files
  }
  command <<<
    bedExtendRanges \
      ~{database} \
      ~{length} \
      ~{files} \
      ~{true="-host" false="" host} \
      ~{true="-user" false="" user} \
      ~{true="-password" false="" password} \
      ~{true="-tab" false="" tab} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    host: "mysql host"
    user: "mysql user"
    password: "mysql password"
    tab: "Separate by tabs rather than space"
    verbose: "- verbose level for extra information to STDERR"
    database: ""
    length: ""
    files: ""
  }
}