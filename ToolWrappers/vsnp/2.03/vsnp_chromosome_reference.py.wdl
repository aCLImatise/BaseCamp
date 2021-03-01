version 1.0

task VsnpChromosomeReferencepy {
  input {
    Directory? cwd
    Boolean? v
    String prog
  }
  command <<<
    vsnp_chromosome_reference_py \
      ~{prog} \
      ~{if defined(cwd) then ("--cwd " +  '"' + cwd + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cwd: "Optional: path to VCF files"
    v: ""
    prog: ""
  }
  output {
    File out_stdout = stdout()
  }
}