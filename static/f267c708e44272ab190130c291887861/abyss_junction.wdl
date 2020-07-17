version 1.0

task AbyssJunction {
  input {
    File? ignore
    Boolean? verbose
    String overlap
    String scaffold
  }
  command <<<
    abyss-junction \
      ~{overlap} \
      ~{scaffold} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    ignore: "ignore junctions seen in FILE"
    verbose: "display verbose output"
    overlap: "the overlap graph"
    scaffold: "a scaffold graph"
  }
}