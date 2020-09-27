version 1.0

task Pglite {
  input {
    String? personality
    Boolean? directory
  }
  command <<<
    pglite \
      ~{if defined(personality) then ("--personality " +  '"' + personality + '"') else ""} \
      ~{if (directory) then "--directory" else ""}
  >>>
  parameter_meta {
    personality: "|postgres\\nDefaults to `postgres`. The `pipeline` personality exists to support\\nPipelineDB."
    directory: "/path/to/data\\nDefaults to `./var`.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}