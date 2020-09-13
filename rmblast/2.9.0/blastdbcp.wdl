version 1.0

task Blastdbcp {
  input {
    File? gi_list
  }
  command <<<
    blastdbcp \
      ~{if defined(gi_list) then ("-gilist " +  '"' + gi_list + '"') else ""}
  >>>
  parameter_meta {
    gi_list: "[-title database_title] [-membership_bits]"
  }
  output {
    File out_stdout = stdout()
  }
}