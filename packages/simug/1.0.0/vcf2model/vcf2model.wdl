version 1.0

task Vcf2model {
  input {
    String? man
    String? version
    File? vcf
    String? excluded_chr_list
    Int? qual
    File? prefix
  }
  command <<<
    vcf2model \
      ~{if defined(man) then ("-man " +  '"' + man + '"') else ""} \
      ~{if defined(version) then ("-version " +  '"' + version + '"') else ""} \
      ~{if defined(vcf) then ("-vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(excluded_chr_list) then ("-excluded_chr_list " +  '"' + excluded_chr_list + '"') else ""} \
      ~{if defined(qual) then ("-qual " +  '"' + qual + '"') else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/simug:1.0.0--hdfd78af_1"
  }
  parameter_meta {
    man: "Print more detailed help message. Example: -m."
    version: "Print version information. Example: -v."
    vcf: "Specify the input variant calling file (in vcf or vcf.gz\\nformat). Example: -vcf input.vcf(.gz)."
    excluded_chr_list: "Specify the chromosome(s) to be excluded for variant profiling.\\nExample: -excluded_chr_list excluded_chr_list.txt. Default = \\\"\\\"."
    qual: "Specify the cutoff of the minimal variant quality to be\\nconsidered. Example: -qual 30. Default = 0."
    prefix: "Specify the file name prefix for the output files. Example:\\n-prefix test_prefix. Default = \\\"output_prefix\\\".\\n"
  }
  output {
    File out_stdout = stdout()
    File out_prefix = "${in_prefix}"
  }
}