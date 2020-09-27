version 1.0

task GsortGENOME {
  input {
    Boolean? parent
    String? memory
    String? chromosome_mappings
    String g_sort
    File path
    String genome
  }
  command <<<
    gsort GENOME \
      ~{g_sort} \
      ~{path} \
      ~{genome} \
      ~{if (parent) then "--parent" else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(chromosome_mappings) then ("--chromosomemappings " +  '"' + chromosome_mappings + '"') else ""}
  >>>
  parameter_meta {
    parent: ""
    memory: ""
    chromosome_mappings: ""
    g_sort: ""
    path: ""
    genome: ""
  }
  output {
    File out_stdout = stdout()
  }
}