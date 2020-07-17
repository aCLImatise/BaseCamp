version 1.0

task KmerStreamJoin {
  input {
    Boolean? verbose
    Array[String] o
    String merged_file
  }
  command <<<
    KmerStreamJoin \
      ~{merged_file} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Print output at the end"
    o: ""
    merged_file: ""
  }
}