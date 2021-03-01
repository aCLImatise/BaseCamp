version 1.0

task Vcf2scoary {
  input {
    File? out
    File? types
    File? force
  }
  command <<<
    vcf2scoary \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(types) then ("--types " +  '"' + types + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "The path to the output file"
    types: "The types of variants to include in the output. NOTE: This\\nworks if TYPE=XX can be found in the INFO column of the vcf\\nfile. The special keyword ALL includes all types. This is the\\ndefault setting. Common types are snp, mnp, ins, del and\\ncomplex. Give as comma-separated list. Example: --types\\nsnp,ins,del"
    force: "Force overwriting of output file. (If it already exists)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_types = "${in_types}"
    File out_force = "${in_force}"
  }
}