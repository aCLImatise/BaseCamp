version 1.0

task Starchstrip {
  input {
    File? include
    File? exclude
  }
  command <<<
    starchstrip \
      ~{if defined(include) then ("--include " +  '"' + include + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    include: "Include specified chromosomes from <starch-file>."
    exclude: "Exclude specified chromosomes from <starch-file>."
  }
  output {
    File out_stdout = stdout()
  }
}