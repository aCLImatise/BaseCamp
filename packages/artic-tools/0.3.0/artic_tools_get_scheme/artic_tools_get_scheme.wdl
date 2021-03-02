version 1.0

task ArtictoolsGetScheme {
  input {
    Int? scheme_version
    Directory? outdir
    String scheme
  }
  command <<<
    artic_tools get_scheme \
      ~{scheme} \
      ~{if defined(scheme_version) then ("--schemeVersion " +  '"' + scheme_version + '"') else ""} \
      ~{if defined(outdir) then ("--outDir " +  '"' + outdir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/artic-tools:0.3.0--hee4d88c_0"
  }
  parameter_meta {
    scheme_version: "=0      The ARTIC primer scheme version (default = latest)"
    outdir: "The directory to write the scheme and reference sequence to"
    scheme: ""
  }
  output {
    File out_stdout = stdout()
  }
}