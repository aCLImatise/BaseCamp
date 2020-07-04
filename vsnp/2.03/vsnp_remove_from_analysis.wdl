version 1.0

task VsnpRemoveFromAnalysis.py {
  input {
    String? codes
    String? cwd
    String? extension
    Boolean? v
    String prog
  }
  command <<<
    vsnp_remove_from_analysis.py \
      ~{prog} \
      ~{if defined(codes) then ("--codes " +  '"' + codes + '"') else ""} \
      ~{if defined(cwd) then ("--cwd " +  '"' + cwd + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    codes: "Excel file containing samples to remove from analysis Column 1: to match sample name minus extension. No header allowed"
    cwd: "Optional: path to VCF files"
    extension: "File extension type to be renamed"
    v: ""
    prog: ""
  }
}