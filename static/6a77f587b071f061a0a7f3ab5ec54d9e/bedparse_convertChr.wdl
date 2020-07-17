version 1.0

task BedparseConvertChr {
  input {
    String? assembly
    String? target
    Boolean? allow_missing
    Boolean? suppress_missing
    Boolean? patches
  }
  command <<<
    bedparse convertChr \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{true="--allowMissing" false="" allow_missing} \
      ~{true="--suppressMissing" false="" suppress_missing} \
      ~{true="--patches" false="" patches}
  >>>
  parameter_meta {
    assembly: "Assembly of the BED file (either hg38 or mm10)."
    target: "Desidered chromosome name convention (ucsc or ens)."
    allow_missing: "When a chromosome name can't be matched between USCS and Ensembl set it to 'NA' (by default thrown as error)."
    suppress_missing: "When a chromosome name can't be matched between USCS and Ensembl do not report it in the output (by default throws an error)."
    patches: "Allows conversion of all patches up to p11 for hg38 and p4 for mm10. Without this option, if the BED file contains contigs added by a patch the conversion terminates with an error (unless the -a or -s flags are present)."
  }
}