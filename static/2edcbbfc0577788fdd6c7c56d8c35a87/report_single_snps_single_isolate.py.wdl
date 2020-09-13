version 1.0

task ReportSingleSnpsSingleIsolatepy {
  input {
    File? input_matrix
    String? genome_name
  }
  command <<<
    report_single_snps_single_isolate_py \
      ~{if defined(input_matrix) then ("--input_matrix " +  '"' + input_matrix + '"') else ""} \
      ~{if defined(genome_name) then ("--genome_name " +  '"' + genome_name + '"') else ""}
  >>>
  parameter_meta {
    input_matrix: "/path/to/NASP_matrix [REQUIRED]"
    genome_name: "genome to look for singleton SNPs [REQUIRED]\\n"
  }
  output {
    File out_stdout = stdout()
  }
}