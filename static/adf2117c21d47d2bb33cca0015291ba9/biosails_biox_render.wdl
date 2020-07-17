version 1.0

task BiosailsBioxRender.py {
  input {
    String? template
    String? json
  }
  command <<<
    biosails-biox-render.py \
      ~{if defined(template) then ("--template " +  '"' + template + '"') else ""} \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""}
  >>>
  parameter_meta {
    template: "Path to template file"
    json: "Path to json object file"
  }
}