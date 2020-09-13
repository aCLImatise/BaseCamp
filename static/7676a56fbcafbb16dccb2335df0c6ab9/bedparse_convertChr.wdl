version 1.0

task BedparseConvertChr {
  input {
    File? assembly
    String? target
    Boolean? allow_missing
    Boolean? suppress_missing
    Boolean? patches
  }
  command <<<
    bedparse convertChr \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if (allow_missing) then "--allowMissing" else ""} \
      ~{if (suppress_missing) then "--suppressMissing" else ""} \
      ~{if (patches) then "--patches" else ""}
  >>>
  parameter_meta {
    assembly: "Assembly of the BED file (either hg38 or mm10)."
    target: "Desidered chromosome name convention (ucsc or ens)."
    allow_missing: "When a chromosome name can't be matched between USCS\\nand Ensembl set it to 'NA' (by default thrown as\\nerror)."
    suppress_missing: "When a chromosome name can't be matched between USCS\\nand Ensembl do not report it in the output (by default\\nthrows an error)."
    patches: "Allows conversion of all patches up to p11 for hg38\\nand p4 for mm10. Without this option, if the BED file\\ncontains contigs added by a patch the conversion\\nterminates with an error (unless the -a or -s flags\\nare present).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}