version 1.0

task Vcf2scoary {
  input {
    String? out
    String? types
    Boolean? force
  }
  command <<<
    vcf2scoary \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(types) then ("--types " +  '"' + types + '"') else ""} \
      ~{true="--force" false="" force}
  >>>
  parameter_meta {
    out: "The path to the output file"
    types: "The types of variants to include in the output. NOTE: This works if TYPE=XX can be found in the INFO column of the vcf file. The special keyword ALL includes all types. This is the default setting. Common types are snp, mnp, ins, del and complex. Give as comma-separated list. Example: --types snp,ins,del"
    force: "Force overwriting of output file. (If it already exists)"
  }
}