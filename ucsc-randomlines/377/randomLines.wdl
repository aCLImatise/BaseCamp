version 1.0

task RandomLines {
  input {
    String? seed
    Boolean? de_comment
    String in_file
    String count
    String outfile
  }
  command <<<
    randomLines \
      ~{in_file} \
      ~{count} \
      ~{outfile} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""} \
      ~{true="-decomment" false="" de_comment}
  >>>
  parameter_meta {
    seed: "- Set seed used for randomizing, useful for debugging."
    de_comment: "- remove blank lines and those starting with "
    in_file: ""
    count: ""
    outfile: ""
  }
}