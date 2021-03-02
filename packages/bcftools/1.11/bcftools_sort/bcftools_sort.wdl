version 1.0

task BcftoolsSort {
  input {
    Float? max_mem
    File? output_file_name
    String? output_type
    String? temp_dir
    File file_dot_vcf
  }
  command <<<
    bcftools sort \
      ~{file_dot_vcf} \
      ~{if defined(max_mem) then ("--max-mem " +  '"' + max_mem + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if defined(temp_dir) then ("--temp-dir " +  '"' + temp_dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcftools:1.11--h7c999a4_0"
  }
  parameter_meta {
    max_mem: "[kMG]    maximum memory to use [768M]"
    output_file_name: "output file name [stdout]"
    output_type: "b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]"
    temp_dir: "temporary files [/tmp/bcftools-sort.XXXXXX]"
    file_dot_vcf: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}