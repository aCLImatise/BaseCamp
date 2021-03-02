version 1.0

task StatisticReadsOnDNAsContam {
  input {
    File? input_files_mapped
    File? gtf_file
    String? ot_put_prefix
  }
  command <<<
    StatisticReadsOnDNAsContam \
      ~{if defined(input_files_mapped) then ("--input " +  '"' + input_files_mapped + '"') else ""} \
      ~{if defined(gtf_file) then ("--gtfFile " +  '"' + gtf_file + '"') else ""} \
      ~{if defined(ot_put_prefix) then ("--otput_prefix " +  '"' + ot_put_prefix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0"
  }
  parameter_meta {
    input_files_mapped: "Input files mapped to transcriptome with bam format.\\n[required]"
    gtf_file: "geome annotation file with gtf format.[required]"
    ot_put_prefix: "Prefix of output files.[required]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}