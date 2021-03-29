version 1.0

task DivSnpTableChrpy {
  input {
    File? mask
    String? suffix
    File? lens
    String feature_dot_bed
    String ar_dot_bed
    String snp_dot_bed
    String div_directory
  }
  command <<<
    div_snp_table_chr_py \
      ~{feature_dot_bed} \
      ~{ar_dot_bed} \
      ~{snp_dot_bed} \
      ~{div_directory} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(lens) then ("--lens " +  '"' + lens + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0"
  }
  parameter_meta {
    mask: "Mask AR and features with this file"
    suffix: "append suffix to chromosomes to get filenames from\\ndiv_directory"
    lens: "Set chromosome ends using LEN file"
    feature_dot_bed: ""
    ar_dot_bed: ""
    snp_dot_bed: ""
    div_directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}