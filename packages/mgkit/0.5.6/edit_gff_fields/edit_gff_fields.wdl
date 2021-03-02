version 1.0

task EditgffFields {
  input {
    Int? verbose
    String? gff_file
    String? txt_file
  }
  command <<<
    edit_gff fields \
      ~{gff_file} \
      ~{txt_file} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0"
  }
  parameter_meta {
    verbose: "Number of annotations to parse, 0 will parse the\\nwhole file  [default: 10]"
    gff_file: ""
    txt_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}