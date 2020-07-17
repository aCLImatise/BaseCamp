version 1.0

task TinscanPrep {
  input {
    String? target
    String? query
    String? a_dir
    String? b_dir
    String? outdir
  }
  command <<<
    tinscan-prep \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(a_dir) then ("--adir " +  '"' + a_dir + '"') else ""} \
      ~{if defined(b_dir) then ("--bdir " +  '"' + b_dir + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    target: "Multifasta containing A genome."
    query: "Multifasta containing B genome."
    a_dir: "A genome sub-directory within outdir"
    b_dir: "B genome sub-directory within outdir"
    outdir: "Write split directories within this directory. (Default: cwd)"
  }
}