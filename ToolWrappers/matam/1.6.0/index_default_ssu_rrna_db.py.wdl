version 1.0

task IndexDefaultSsuRrnaDbpy {
  input {
    File? ref_dir
    Int? max_memory
  }
  command <<<
    index_default_ssu_rrna_db_py \
      ~{if defined(ref_dir) then ("--ref_dir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(max_memory) then ("--max_memory " +  '"' + max_memory + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ref_dir: "Output dir. Default is $MATAM_DIR/db/"
    max_memory: "Maximum memory to use (in MBi). Default is 10000 MBi\\n"
  }
  output {
    File out_stdout = stdout()
  }
}