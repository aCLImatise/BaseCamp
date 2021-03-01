version 1.0

task Cat {
  input {
    Boolean? show_all
    Boolean? number_non_blank
    Boolean? equivalent_to_ve
    Boolean? show_ends
    Boolean? number
    Boolean? squeeze_blank
    Boolean? equivalent_to_vt
    Boolean? show_tabs
    Boolean? ignored
    Boolean? show_non_printing
    String cat
  }
  command <<<
    cat \
      ~{cat} \
      ~{if (show_all) then "--show-all" else ""} \
      ~{if (number_non_blank) then "--number-nonblank" else ""} \
      ~{if (equivalent_to_ve) then "-e" else ""} \
      ~{if (show_ends) then "--show-ends" else ""} \
      ~{if (number) then "--number" else ""} \
      ~{if (squeeze_blank) then "--squeeze-blank" else ""} \
      ~{if (equivalent_to_vt) then "-t" else ""} \
      ~{if (show_tabs) then "--show-tabs" else ""} \
      ~{if (ignored) then "-u" else ""} \
      ~{if (show_non_printing) then "--show-nonprinting" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    show_all: "equivalent to -vET"
    number_non_blank: "number nonempty output lines, overrides -n"
    equivalent_to_ve: "equivalent to -vE"
    show_ends: "display $ at end of each line"
    number: "number all output lines"
    squeeze_blank: "suppress repeated empty output lines"
    equivalent_to_vt: "equivalent to -vT"
    show_tabs: "display TAB characters as ^I"
    ignored: "(ignored)"
    show_non_printing: "use ^ and M- notation, except for LFD and TAB"
    cat: "Copy standard input to standard output."
  }
  output {
    File out_stdout = stdout()
  }
}