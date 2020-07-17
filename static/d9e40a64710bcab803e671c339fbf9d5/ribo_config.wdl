version 1.0

task RiboConfig {
  input {
    String? outdir
    String? name
    String ribo
  }
  command <<<
    ribo config \
      ~{ribo} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  parameter_meta {
    outdir: "output directory; default: /tmp/tmpdvlbjbbn"
    name: "name of config file; default: timestamped"
    ribo: ""
  }
}