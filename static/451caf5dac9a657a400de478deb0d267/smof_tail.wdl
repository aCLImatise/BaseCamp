version 1.0

task SmofTail {
  input {
    String? entries
    String? first
    String? last
    String k_print_entries
    String input_fasta_sequence
  }
  command <<<
    smof tail \
      ~{k_print_entries} \
      ~{input_fasta_sequence} \
      ~{if defined(entries) then ("--entries " +  '"' + entries + '"') else ""} \
      ~{if defined(first) then ("--first " +  '"' + first + '"') else ""} \
      ~{if defined(last) then ("--last " +  '"' + last + '"') else ""}
  >>>
  parameter_meta {
    entries: "print last K entries; or use -n +K to output starting with the Kth"
    first: "print first K letters of each sequence"
    last: "print last K letters of each sequence"
    k_print_entries: "-K print last K entries"
    input_fasta_sequence: "input fasta sequence (default = stdin)"
  }
}