version 1.0

task QacToWig {
  input {
    String? name
    Boolean? fixed
    String in_dot_qac
    String out_file_or_dir
  }
  command <<<
    qacToWig \
      ~{in_dot_qac} \
      ~{out_file_or_dir} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{true="-fixed" false="" fixed}
  >>>
  parameter_meta {
    name: "restrict output to just this sequence name"
    fixed: "output single file with wig headers and fixed step size"
    in_dot_qac: ""
    out_file_or_dir: ""
  }
}