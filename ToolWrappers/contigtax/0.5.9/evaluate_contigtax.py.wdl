version 1.0

task EvaluateContigtaxpy {
  input {
    String? dbname
    String? t
    String in_file
    String tax_file
  }
  command <<<
    evaluate_contigtax_py \
      ~{in_file} \
      ~{tax_file} \
      ~{if defined(dbname) then ("--dbname " +  '"' + dbname + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    dbname: ""
    t: ""
    in_file: "contigtax assignment file with taxids (use --taxidout\\nwith contigtax assign)"
    tax_file: "File mapping sequence id to true taxonomy id"
  }
  output {
    File out_stdout = stdout()
  }
}