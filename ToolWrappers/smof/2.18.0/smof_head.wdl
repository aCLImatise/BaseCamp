version 1.0

task SmofHead {
  input {
    String? entries
    String? first
    String? last
    String input_fasta_default
  }
  command <<<
    smof head \
      ~{input_fasta_default} \
      ~{if defined(entries) then ("--entries " +  '"' + entries + '"') else ""} \
      ~{if defined(first) then ("--first " +  '"' + first + '"') else ""} \
      ~{if defined(last) then ("--last " +  '"' + last + '"') else ""}
  >>>
  parameter_meta {
    entries: "print first K entries; or use -n -K to print all but the\\nlast K entries"
    first: "print first K letters of each sequence"
    last: "print last K letters of each sequence"
    input_fasta_default: "input fasta sequence (default = stdin)"
  }
  output {
    File out_stdout = stdout()
  }
}