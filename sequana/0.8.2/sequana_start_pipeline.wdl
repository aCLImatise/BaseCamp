version 1.0

task SequanaStartPipeline {
  input {
    Boolean? force
    String? name
    String? keywords
    String? description
    String welcome
    String to
    String se_quan_a
  }
  command <<<
    sequana_start_pipeline \
      ~{welcome} \
      ~{to} \
      ~{se_quan_a} \
      ~{true="--force" false="" force} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(keywords) then ("--keywords " +  '"' + keywords + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""}
  >>>
  parameter_meta {
    force: "Force the creation to overwrite existing directory and contents"
    name: "Name of your project. For instance for sequana_analysis, just type 'analysis'"
    keywords: "Keywords (you can edit later)"
    description: "description of your future pipeline (you can still edit later)"
    welcome: ""
    to: ""
    se_quan_a: ""
  }
}