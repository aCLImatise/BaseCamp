version 1.0

task Prerapsearch {
  input {
    Int? splits_database_specified
    String? output_full_headers
    File? n
    String? d
  }
  command <<<
    prerapsearch \
      ~{if defined(splits_database_specified) then ("-s " +  '"' + splits_database_specified + '"') else ""} \
      ~{if defined(output_full_headers) then ("-f " +  '"' + output_full_headers + '"') else ""} \
      ~{if defined(n) then ("-n " +  '"' + n + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    splits_database_specified: "(splits the database into specified number of files)"
    output_full_headers: "/t (output the full fasta headers of subjects to faicilitate anonotation)"
    n: ""
    d: ""
  }
  output {
    File out_stdout = stdout()
  }
}