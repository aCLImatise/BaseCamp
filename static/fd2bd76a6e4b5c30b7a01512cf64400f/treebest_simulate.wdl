version 1.0

task TreebestSimulate {
  input {
    String? duplication_probability
    String? loss_probability
    String? loss_probability_duplication
    String? max_height
    Boolean? show_internal_name
  }
  command <<<
    treebest simulate \
      ~{if defined(duplication_probability) then ("-d " +  '"' + duplication_probability + '"') else ""} \
      ~{if defined(loss_probability) then ("-l " +  '"' + loss_probability + '"') else ""} \
      ~{if defined(loss_probability_duplication) then ("-p " +  '"' + loss_probability_duplication + '"') else ""} \
      ~{if defined(max_height) then ("-m " +  '"' + max_height + '"') else ""} \
      ~{true="-n" false="" show_internal_name}
  >>>
  parameter_meta {
    duplication_probability: "duplication probability [0.05]"
    loss_probability: "loss probability [0.01]"
    loss_probability_duplication: "loss probability after duplication [0.25]"
    max_height: "max height [0.25]"
    show_internal_name: "not show internal name"
  }
}