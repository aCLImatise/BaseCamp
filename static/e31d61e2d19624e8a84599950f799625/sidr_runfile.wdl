version 1.0

task SidrRunfile {
  input {
    File? in_file
    File? tax_dump
    File? location_save_the
    File? to_remove
    String? target
    Boolean? binary
    String? level
    String sources_dot
  }
  command <<<
    sidr runfile \
      ~{sources_dot} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if defined(tax_dump) then ("--taxdump " +  '"' + tax_dump + '"') else ""} \
      ~{if defined(location_save_the) then ("--output " +  '"' + location_save_the + '"') else ""} \
      ~{if defined(to_remove) then ("--toremove " +  '"' + to_remove + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if (binary) then "--binary" else ""} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sidr:0.0.2a2--pyh3252c3a_0"
  }
  parameter_meta {
    in_file: "Comma-delimited input file."
    tax_dump: "Location of the NCBI Taxonomy dump. Default is\\n$BLASTDB."
    location_save_the: "Location to save the contigs identified as the target\\norganism(optional)."
    to_remove: "Location to save the contigs identified as not\\nbelonging to the target organism (optional)."
    target: "The identity of the target organism at the chosen\\nclassification level. It is recommended to use the\\norganism's phylum."
    binary: "Use binary target/nontarget classification."
    level: "The classification level to use when constructing the\\nmodel. Default is 'phylum'."
    sources_dot: "Input data will be read for all variables which will be used to construct"
  }
  output {
    File out_stdout = stdout()
  }
}