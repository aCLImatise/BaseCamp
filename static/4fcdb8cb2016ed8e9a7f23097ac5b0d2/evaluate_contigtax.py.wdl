version 1.0

task EvaluateContigtaxpy {
  input {
    Directory? tax_dir
    File? dbname
    String in_file
    String tax_file
  }
  command <<<
    evaluate_contigtax_py \
      ~{in_file} \
      ~{tax_file} \
      ~{if defined(tax_dir) then ("--taxdir " +  '"' + tax_dir + '"') else ""} \
      ~{if defined(dbname) then ("--dbname " +  '"' + dbname + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tax_dir: "Directory with ete3 sqlite database"
    dbname: "Name of sqlite database file"
    in_file: "contigtax assignment file with taxids (use --taxidout\\nwith contigtax assign)"
    tax_file: "File mapping sequence id to true taxonomy id"
  }
  output {
    File out_stdout = stdout()
  }
}