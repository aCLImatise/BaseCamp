version 1.0

task Vcfsort {
  input {
    Boolean? equivalent_to_ve
    Boolean? show_ends
    Boolean? number
    Boolean? squeeze_blank
    String? to_vt
    String? show_tabs
    Boolean? ignored
    String? show_non_printing
    String cat
    String? option
  }
  command <<<
    vcfsort \
      ~{cat} \
      ~{option} \
      ~{true="-e" false="" equivalent_to_ve} \
      ~{true="--show-ends" false="" show_ends} \
      ~{true="--number" false="" number} \
      ~{true="--squeeze-blank" false="" squeeze_blank} \
      ~{if defined(to_vt) then ("-t " +  '"' + to_vt + '"') else ""} \
      ~{if defined(show_tabs) then ("--show-tabs " +  '"' + show_tabs + '"') else ""} \
      ~{true="-u" false="" ignored} \
      ~{if defined(show_non_printing) then ("--show-nonprinting " +  '"' + show_non_printing + '"') else ""}
  >>>
  parameter_meta {
    equivalent_to_ve: "equivalent to -vE"
    show_ends: "display $ at end of each line"
    number: "number all output lines"
    squeeze_blank: "suppress repeated empty output lines"
    to_vt: "to -vT"
    show_tabs: "TAB characters as ^I"
    ignored: "(ignored)"
    show_non_printing: "^ and M- notation, except for LFD and TAB"
    cat: ""
    option: ""
  }
}