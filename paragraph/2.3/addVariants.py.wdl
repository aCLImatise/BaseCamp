version 1.0

task AddVariantspy {
  input {
    File? variants
    Boolean? verbose
  }
  command <<<
    addVariants_py \
      ~{if defined(variants) then ("--variants " +  '"' + variants + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    variants: "JSON file with variant calls to use instead of calls in\\ninput graph"
    verbose: "More logging; May be given twice for even more logging"
  }
  output {
    File out_stdout = stdout()
  }
}