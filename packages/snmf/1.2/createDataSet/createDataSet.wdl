version 1.0

task CreateDataSet {
  input {
    File? _genotype_file
    String? _seed_random
    Float? _percentage_masked
    File? _output_file
  }
  command <<<
    createDataSet \
      ~{if defined(_genotype_file) then ("-x " +  '"' + _genotype_file + '"') else ""} \
      ~{if defined(_seed_random) then ("-s " +  '"' + _seed_random + '"') else ""} \
      ~{if defined(_percentage_masked) then ("-r " +  '"' + _percentage_masked + '"') else ""} \
      ~{if defined(_output_file) then ("-o " +  '"' + _output_file + '"') else ""}
  >>>
  parameter_meta {
    _genotype_file: "-- genotype file (in .geno format)"
    _seed_random: "-- seed random init             (default: random)"
    _percentage_masked: "-- percentage of masked data    (default: 0.05)"
    _output_file: "-- output file (in .geno format)(default: input_file_I.geno)"
  }
  output {
    File out_stdout = stdout()
    File out__output_file = "${in__output_file}"
  }
}