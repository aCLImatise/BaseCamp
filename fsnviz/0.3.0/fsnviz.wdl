version 1.0

task Fsnviz {
  input {
    File? out_dir
    String? base_name
    Boolean? karyotype
    File? circo_s_conf
    Boolean? png
    Boolean? svg
    File? karyotype_file
    String? circo_s_exe
  }
  command <<<
    fsnviz \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(base_name) then ("--base-name " +  '"' + base_name + '"') else ""} \
      ~{true="--karyotype" false="" karyotype} \
      ~{if defined(circo_s_conf) then ("--circos-conf " +  '"' + circo_s_conf + '"') else ""} \
      ~{true="--png" false="" png} \
      ~{true="--svg" false="" svg} \
      ~{if defined(karyotype_file) then ("--karyotype-file " +  '"' + karyotype_file + '"') else ""} \
      ~{if defined(circo_s_exe) then ("--circos-exe " +  '"' + circo_s_exe + '"') else ""}
  >>>
  parameter_meta {
    out_dir: "Output directory. Default: current run directory."
    base_name: "Base file name of the image output. Filename extensions will be added accordingly."
    karyotype: "[human.hg19|human.hg38] Karyotype to use. Must be supported by circos. If the `--karyotype-file` parameter is defined, this parameter is ignored. Default: human.hg19."
    circo_s_conf: "Circos configuration file. If not supplied, fsnviz generates a default one."
    png: "/ --no-png                Whether to create PNG plots or not. Default: no."
    svg: "/ --no-svg                Whether to create SVG plots or not. Default: yes."
    karyotype_file: "Karyotype file to use. This parameter takes precedence over the `--karyotype` parameter."
    circo_s_exe: "Circos executable. Default: circos (the one accessible via PATH)."
  }
}