version 1.0

task Embossdata {
  input {
    Boolean? show_all
  }
  command <<<
    embossdata \
      ~{true="-showall" false="" show_all}
  >>>
  parameter_meta {
    show_all: "toggle     Show all potential EMBOSS data files"
  }
}