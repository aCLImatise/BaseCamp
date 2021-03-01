version 1.0

task SequanaStartPipeline {
  input {
    Boolean? force
    String? keywords
    String? description
    String se_quan_a_start_pipeline
    String contents
  }
  command <<<
    sequana_start_pipeline \
      ~{se_quan_a_start_pipeline} \
      ~{contents} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(keywords) then ("--keywords " +  '"' + keywords + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    force: "Force the creation to overwrite existing directory and"
    keywords: "Keywords (you can edit later)"
    description: "description of your future pipeline (you can still\\nedit later)\\n"
    se_quan_a_start_pipeline: "and follow the instructions. Please see the README page on our"
    contents: "--name NAME           Name of your project. For instance for"
  }
  output {
    File out_stdout = stdout()
  }
}