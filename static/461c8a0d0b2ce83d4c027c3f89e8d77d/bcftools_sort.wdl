version 1.0

task BcftoolsSort {
  input {
    Float? max_mem
    File? output_file
    String? output_type
    String? temp_dir
    File file_dot_vcf
  }
  command <<<
    bcftools sort \
      ~{file_dot_vcf} \
      ~{if defined(max_mem) then ("--max-mem " +  '"' + max_mem + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_type) then ("--output-type " +  '"' + output_type + '"') else ""} \
      ~{if defined(temp_dir) then ("--temp-dir " +  '"' + temp_dir + '"') else ""}
  >>>
  parameter_meta {
    max_mem: "[kMG]    maximum memory to use [768M]"
    output_file: "output file name [stdout]"
    output_type: "b: compressed BCF, u: uncompressed BCF, z: compressed VCF, v: uncompressed VCF [v]"
    temp_dir: "temporary files [/tmp/bcftools-sort.XXXXXX]"
    file_dot_vcf: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}