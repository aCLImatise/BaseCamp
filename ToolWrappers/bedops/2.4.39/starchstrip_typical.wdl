version 1.0

task Starchstriptypical {
  input {
    File? include
    File? exclude
    String starch_strip
  }
  command <<<
    starchstrip_typical \
      ~{starch_strip} \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""}
  >>>
  parameter_meta {
    include: "Include specified chromosomes from <starch-file>."
    exclude: "Exclude specified chromosomes from <starch-file>."
    starch_strip: ""
  }
  output {
    File out_stdout = stdout()
  }
}