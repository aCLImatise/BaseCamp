version 1.0

task RowsToCols {
  input {
    Boolean? var_col
    Boolean? tab
    String? fs
    Boolean? fixed
    String? offsets
    String in_dot_txt
    String out_dot_txt
  }
  command <<<
    rowsToCols \
      ~{in_dot_txt} \
      ~{out_dot_txt} \
      ~{true="-varCol" false="" var_col} \
      ~{true="-tab" false="" tab} \
      ~{if defined(fs) then ("-fs " +  '"' + fs + '"') else ""} \
      ~{true="-fixed" false="" fixed} \
      ~{if defined(offsets) then ("-offsets " +  '"' + offsets + '"') else ""}
  >>>
  parameter_meta {
    var_col: "- rows may to have various numbers of columns."
    tab: "- fields are separated by tab"
    fs: "- fields are separated by given character"
    fixed: "- fields are of fixed width with space padding"
    offsets: ",Y,Z - fields are of fixed width at given offsets"
    in_dot_txt: ""
    out_dot_txt: ""
  }
}