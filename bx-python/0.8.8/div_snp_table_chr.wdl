version 1.0

task DivSnpTableChr.py {
  input {
    String? mask
    String? suffix
    String? lens
    String feature_dot_bed
    String ar_dot_bed
    String snp_dot_bed
    String div_directory
  }
  command <<<
    div_snp_table_chr.py \
      ~{feature_dot_bed} \
      ~{ar_dot_bed} \
      ~{snp_dot_bed} \
      ~{div_directory} \
      ~{if defined(mask) then ("--mask " +  '"' + mask + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(lens) then ("--lens " +  '"' + lens + '"') else ""}
  >>>
  parameter_meta {
    mask: "Mask AR and features with this file"
    suffix: "append suffix to chromosomes to get filenames from div_directory"
    lens: "Set chromosome ends using LEN file"
    feature_dot_bed: ""
    ar_dot_bed: ""
    snp_dot_bed: ""
    div_directory: ""
  }
}