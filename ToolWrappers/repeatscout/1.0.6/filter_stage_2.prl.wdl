version 1.0

task Filterstage2prl {
  input {
    File? cat
    Boolean? thresh
  }
  command <<<
    filter_stage_2_prl \
      ~{if (cat) then "--cat" else ""} \
      ~{if (thresh) then "--thresh" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cat: "The RepeatMasker output file. It can either be a .cat file or a .out\\nfile, but a .out file is preferred."
    thresh: "The number of times a sequence must appear for it to be reported."
  }
  output {
    File out_stdout = stdout()
    File out_cat = "${in_cat}"
  }
}