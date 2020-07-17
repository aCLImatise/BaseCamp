version 1.0

task GsortGENOME {
  input {
    String? chromosome_mappings
    String? memory
    Boolean? parent
    String g_sort
    File path
    String genome
  }
  command <<<
    gsort GENOME \
      ~{g_sort} \
      ~{path} \
      ~{genome} \
      ~{if defined(chromosome_mappings) then ("--chromosomemappings " +  '"' + chromosome_mappings + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{true="--parent" false="" parent}
  >>>
  parameter_meta {
    chromosome_mappings: ""
    memory: ""
    parent: ""
    g_sort: ""
    path: ""
    genome: ""
  }
}