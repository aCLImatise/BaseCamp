version 1.0

task Tinscanprep {
  input {
    String? target
    String? query
    Directory? a_dir
    Directory? b_dir
    Directory? outdir
  }
  command <<<
    tinscan_prep \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(a_dir) then ("--adir " +  '"' + a_dir + '"') else ""} \
      ~{if defined(b_dir) then ("--bdir " +  '"' + b_dir + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    target: "Multifasta containing A genome."
    query: "Multifasta containing B genome."
    a_dir: "A genome sub-directory within outdir"
    b_dir: "B genome sub-directory within outdir"
    outdir: "Write split directories within this directory.\\n(Default: cwd)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}