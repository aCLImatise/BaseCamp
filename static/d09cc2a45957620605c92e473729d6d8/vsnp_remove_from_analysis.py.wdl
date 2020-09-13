version 1.0

task VsnpRemoveFromAnalysispy {
  input {
    File? codes
    Directory? cwd
    File? extension
    Boolean? v
    String prog
  }
  command <<<
    vsnp_remove_from_analysis_py \
      ~{prog} \
      ~{if defined(codes) then ("--codes " +  '"' + codes + '"') else ""} \
      ~{if defined(cwd) then ("--cwd " +  '"' + cwd + '"') else ""} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    codes: "Excel file containing samples to remove from analysis\\nColumn 1: to match sample name minus extension. No\\nheader allowed"
    cwd: "Optional: path to VCF files"
    extension: "File extension type to be renamed"
    v: ""
    prog: ""
  }
  output {
    File out_stdout = stdout()
  }
}