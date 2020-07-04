version 1.0

task GetGffInfoDbm {
  input {
    String? output_dir
    String? gff_file
  }
  command <<<
    get-gff-info dbm \
      ~{gff_file} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    output_dir: "Directory for the database  [default: gff-dbm]"
    gff_file: ""
  }
}