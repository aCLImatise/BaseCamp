version 1.0

task TreebestSimulate {
  input {
    Float? duplication_probability
    Float? loss_probability
    Float? loss_probability_duplication
    Int? max_height
    Boolean? show_internal_name
  }
  command <<<
    treebest simulate \
      ~{if defined(duplication_probability) then ("-d " +  '"' + duplication_probability + '"') else ""} \
      ~{if defined(loss_probability) then ("-l " +  '"' + loss_probability + '"') else ""} \
      ~{if defined(loss_probability_duplication) then ("-p " +  '"' + loss_probability_duplication + '"') else ""} \
      ~{if defined(max_height) then ("-m " +  '"' + max_height + '"') else ""} \
      ~{if (show_internal_name) then "-n" else ""}
  >>>
  parameter_meta {
    duplication_probability: "duplication probability [0.05]"
    loss_probability: "loss probability [0.01]"
    loss_probability_duplication: "loss probability after duplication [0.25]"
    max_height: "max height [0.25]"
    show_internal_name: "not show internal name"
  }
  output {
    File out_stdout = stdout()
  }
}