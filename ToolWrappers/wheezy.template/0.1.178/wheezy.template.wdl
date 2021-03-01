version 1.0

task Wheezytemplate {
  input {
    File? search_path_templates
    String? token_start_
    Boolean? whitespace_clean_up
    String template
    String context
  }
  command <<<
    wheezy_template \
      ~{template} \
      ~{context} \
      ~{if defined(search_path_templates) then ("-s " +  '"' + search_path_templates + '"') else ""} \
      ~{if defined(token_start_) then ("-t " +  '"' + token_start_ + '"') else ""} \
      ~{if (whitespace_clean_up) then "-w" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wheezy.template:0.1.178--pyh864c0ab_0"
  }
  parameter_meta {
    search_path_templates: "search path for templates ( . )"
    token_start_: "token start ( @ )"
    whitespace_clean_up: "whitespace clean up"
    template: "a filename"
    context: "a filename or JSON string"
  }
  output {
    File out_stdout = stdout()
  }
}