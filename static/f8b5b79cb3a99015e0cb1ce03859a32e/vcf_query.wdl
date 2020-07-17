version 1.0

task VcfQuery {
  input {
    File? columns
    String? format
    Boolean? list_columns
    String? region
    Boolean? use_old_method
    File file_dot_vcf_do_tgz
  }
  command <<<
    vcf-query \
      ~{file_dot_vcf_do_tgz} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="--list-columns" false="" list_columns} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{true="--use-old-method" false="" use_old_method}
  >>>
  parameter_meta {
    columns: "List of comma-separated column names or one column name per line in a file."
    format: "The default is '%CHROM:%POS\t%REF[\t%SAMPLE=%GT]\n'"
    list_columns: "List columns."
    region: ":from-to            Retrieve the region. (Runs tabix.)"
    use_old_method: "Use old version of API, which is slow but more robust."
    file_dot_vcf_do_tgz: ""
  }
}