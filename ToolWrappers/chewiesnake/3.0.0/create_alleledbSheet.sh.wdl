version 1.0

task CreateAlleledbSheetsh {
  input {
    String? interactive
    String? force
  }
  command <<<
    create_alleledbSheet_sh \
      ~{if defined(interactive) then ("--interactive " +  '"' + interactive + '"') else ""} \
      ~{if defined(force) then ("--force " +  '"' + force + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/chewiesnake:3.0.0--1"
  }
  parameter_meta {
    interactive: "before execution"
    force: "database"
  }
  output {
    File out_stdout = stdout()
  }
}