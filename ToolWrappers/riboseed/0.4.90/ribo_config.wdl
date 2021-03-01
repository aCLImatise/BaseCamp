version 1.0

task RiboConfig {
  input {
    Directory? outdir
    File? name
    String ribo
  }
  command <<<
    ribo config \
      ~{ribo} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outdir: "output directory; default: /"
    name: "name of config file; default: timestamped"
    ribo: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}