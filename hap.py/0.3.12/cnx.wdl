version 1.0

task Cnx.py {
  input {
    String? output_file_name
    String? bam
    String input_vcf_file
  }
  command <<<
    cnx.py \
      ~{input_vcf_file} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""}
  >>>
  parameter_meta {
    output_file_name: "Output file name (json format)"
    bam: "pass a BAM file for aligner name/version extraction"
    input_vcf_file: "Input VCF file"
  }
}