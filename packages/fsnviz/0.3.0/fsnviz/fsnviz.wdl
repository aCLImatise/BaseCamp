version 1.0

task Fsnviz {
  input {
    Directory? out_dir
    Boolean? karyotype
    File? circo_s_conf
    Boolean? png
    File? circo_s_exe
  }
  command <<<
    fsnviz \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if (karyotype) then "--karyotype" else ""} \
      ~{if defined(circo_s_conf) then ("--circos-conf " +  '"' + circo_s_conf + '"') else ""} \
      ~{if (png) then "--png" else ""} \
      ~{if defined(circo_s_exe) then ("--circos-exe " +  '"' + circo_s_exe + '"') else ""}
  >>>
  parameter_meta {
    out_dir: "Output directory. Default: current run"
    karyotype: "[human.hg19|human.hg38]\\nKaryotype to use. Must be supported by\\ncircos. If the `--karyotype-file` parameter\\nis defined, this parameter is ignored.\\nDefault: human.hg19."
    circo_s_conf: "Circos configuration file. If not supplied,\\nfsnviz generates a default one."
    png: "/ --no-png                Whether to create PNG plots or not. Default:"
    circo_s_exe: "Circos executable. Default: circos (the one\\naccessible via PATH)."
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}