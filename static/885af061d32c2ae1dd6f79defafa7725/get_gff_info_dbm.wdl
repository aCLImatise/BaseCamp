version 1.0

task GetgffinfoDbm {
  input {
    Directory? output_dir
    String? gff_file
  }
  command <<<
    get_gff_info dbm \
      ~{gff_file} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_dir: "Directory for the database  [default: gff-dbm]"
    gff_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}