version 1.0

task SnpSiftIntervals {
  input {
    File? vcf_file_default
    Boolean? exclude_vcf_entries
    String? jar
    String java
    String intervals
    String file_ndot_bed
  }
  command <<<
    SnpSift intervals \
      ~{java} \
      ~{intervals} \
      ~{file_ndot_bed} \
      ~{if defined(vcf_file_default) then ("-i " +  '"' + vcf_file_default + '"') else ""} \
      ~{if (exclude_vcf_entries) then "-x" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vcf_file_default: ":     VCF file. Default STDIN"
    exclude_vcf_entries: ":     Exclude VCF entries in intervals"
    jar: ""
    java: ""
    intervals: ""
    file_ndot_bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}