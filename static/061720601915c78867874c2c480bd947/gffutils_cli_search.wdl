version 1.0

task GffutilsCliSearch {
  input {
    String? feature_type
  }
  command <<<
    gffutils-cli search \
      ~{if defined(feature_type) then ("--featuretype " +  '"' + feature_type + '"') else ""}
  >>>
  parameter_meta {
    feature_type: "Restrict to a particular featuretype. This can be faster than doing a grep on the output, since it restricts the search space in the database (default: -)"
  }
}