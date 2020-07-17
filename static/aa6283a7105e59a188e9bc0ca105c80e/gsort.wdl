version 1.0

task Gsort {
  input {
    String? chromosome_mappings
    String? memory
    Boolean? parent
  }
  command <<<
    gsort \
      ~{if defined(chromosome_mappings) then ("--chromosomemappings " +  '"' + chromosome_mappings + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{true="--parent" false="" parent}
  >>>
  parameter_meta {
    chromosome_mappings: "a file used to re-map chromosome names for example from hg19 to GRCh37"
    memory: "megabytes of memory to use before writing to temp files. [default: 2800]"
    parent: "for gff only. given rows with same chrom and start put those with a 'Parent' attribute first"
  }
}