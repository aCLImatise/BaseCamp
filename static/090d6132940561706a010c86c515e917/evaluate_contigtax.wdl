version 1.0

task EvaluateContigtax.py {
  input {
    String? t
    String? dbname
    String in_file
    String tax_file
  }
  command <<<
    evaluate_contigtax.py \
      ~{in_file} \
      ~{tax_file} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(dbname) then ("--dbname " +  '"' + dbname + '"') else ""}
  >>>
  parameter_meta {
    t: ""
    dbname: ""
    in_file: "contigtax assignment file with taxids (use --taxidout with contigtax assign)"
    tax_file: "File mapping sequence id to true taxonomy id"
  }
}