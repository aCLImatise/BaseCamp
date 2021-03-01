version 1.0

task MimoddVarextract {
  input {
    Array[String] keep_alts
    Boolean? verbose
    File? ofile
    String var_extract
  }
  command <<<
    mimodd varextract \
      ~{var_extract} \
      ~{if defined(keep_alts) then ("--keep-alts " +  '"' + keep_alts + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(ofile) then ("--ofile " +  '"' + ofile + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
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