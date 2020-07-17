version 1.0

task VcfStats {
  input {
    File? dump
    Boolean? filters
    String? prefix
    String? samples
    File file_dot_vcf_do_tgz
  }
  command <<<
    vcf-stats \
      ~{file_dot_vcf_do_tgz} \
      ~{if defined(dump) then ("--dump " +  '"' + dump + '"') else ""} \
      ~{true="--filters" false="" filters} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""}
  >>>
  parameter_meta {
    dump: "Take an existing dump file and recreate the files (works with -p)"
    filters: "<filter1,filter2>             List of filters such as column/field (any value), column/field=bin:max (cluster in bins),column/field=value (exact value)"
    prefix: "Prefix of output files. If slashes are present, directories will be created."
    samples: "Process only the listed samples, - for none. Excluding unwanted samples may increase performance considerably."
    file_dot_vcf_do_tgz: ""
  }
}