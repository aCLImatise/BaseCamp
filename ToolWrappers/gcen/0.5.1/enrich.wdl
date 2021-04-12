version 1.0

task Enrich {
  input {
    File? background
    File? assoc
  }
  command <<<
    enrich \
      ~{if defined(background) then ("--background " +  '"' + background + '"') else ""} \
      ~{if defined(assoc) then ("--assoc " +  '"' + assoc + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gcen:0.5.1--hc9558a2_0"
  }
  parameter_meta {
    background: "(if the -g/--go is specified, the -k/--kegg are ignored)"
    assoc: "p value cutoff (default: 0.05)"
  }
  output {
    File out_stdout = stdout()
  }
}