version 1.0

task CreateDataSet {
  input {
    File? genotype_file_format
    String? _seed_init
    Float? percentage_masked_data
    File? output_file_formatdefault
  }
  command <<<
    createDataSet \
      ~{if defined(genotype_file_format) then ("-x " +  '"' + genotype_file_format + '"') else ""} \
      ~{if defined(_seed_init) then ("-s " +  '"' + _seed_init + '"') else ""} \
      ~{if defined(percentage_masked_data) then ("-r " +  '"' + percentage_masked_data + '"') else ""} \
      ~{if defined(output_file_formatdefault) then ("-o " +  '"' + output_file_formatdefault + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genotype_file_format: "-- genotype file (in .geno format)"
    _seed_init: "-- seed random init             (default: random)"
    percentage_masked_data: "-- percentage of masked data    (default: 0.05)"
    output_file_formatdefault: "-- output file (in .geno format)(default: input_file_I.geno)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_formatdefault = "${in_output_file_formatdefault}"
  }
}