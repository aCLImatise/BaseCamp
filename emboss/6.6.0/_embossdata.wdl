version 1.0

task _embossdata {
  input {
    Boolean? show_all
  }
  command <<<
    _embossdata \
      ~{true="-showall" false="" show_all}
  >>>
  parameter_meta {
    show_all: "toggle     Show all potential EMBOSS data files"
  }
}