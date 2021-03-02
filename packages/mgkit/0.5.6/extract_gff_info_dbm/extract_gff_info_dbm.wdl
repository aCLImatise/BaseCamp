version 1.0

task ExtractgffinfoDbm {
  input {
    Directory? output_dir
    String? gff_file
  }
  command <<<
    extract_gff_info dbm \
      ~{gff_file} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    output_dir: "Directory for the database  [default: gff-dbm]"
    gff_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}