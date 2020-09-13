version 1.0

task MimoddVarextract {
  input {
    Array[String] pre_vcf
    Boolean? keep_alts
    Boolean? verbose
    File? ofile
    String var_extract
  }
  command <<<
    mimodd varextract \
      ~{var_extract} \
      ~{if defined(pre_vcf) then ("--pre-vcf " +  '"' + pre_vcf + '"') else ""} \
      ~{if (keep_alts) then "--keep-alts" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""}
  >>>
  parameter_meta {
    pre_vcf: ""
    keep_alts: "keep all alternate allele candidates even if they do\\nnot appear in any genotype"
    verbose: "verbose output"
    ofile: "redirect the output (variant sites) to the specified\\nfile (default: stdout)\\n"
    var_extract: ""
  }
  output {
    File out_stdout = stdout()
    File out_ofile = "${in_ofile}"
  }
}