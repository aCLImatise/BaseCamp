version 1.0

task CardtrickSearch {
  input {
    String? input_term_search_term
    String? format_output
    String? output_name
    File? path
    Boolean? batch
    Int? input_two
    String? term_two
    Boolean? batch_two
    Boolean? quiet
    Directory directory_dot
  }
  command <<<
    card_trick search \
      ~{directory_dot} \
      ~{if defined(input_term_search_term) then ("--input " +  '"' + input_term_search_term + '"') else ""} \
      ~{if defined(format_output) then ("--format_output " +  '"' + format_output + '"') else ""} \
      ~{if defined(output_name) then ("--output_name " +  '"' + output_name + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if (batch) then "--batch" else ""} \
      ~{if defined(input_two) then ("--input_2 " +  '"' + input_two + '"') else ""} \
      ~{if defined(term_two) then ("--term_2 " +  '"' + term_two + '"') else ""} \
      ~{if (batch_two) then "--batch_2" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    input_term_search_term: "Input term to search in CARD ontology. Provide a\\nunique term o several using --batch option"
    format_output: "Output format. stdout, csv, tsv or json"
    output_name: "Output name."
    path: "Path containing CARD ontology. Default is user’s home"
    batch: "Provide this option if input is a file containing\\nmultiple terms, one per line."
    input_two: "Input term to search in results retrieved from first\\ninput. Provide a unique term o several using --batch\\noption"
    term_two: "The type of term provided to search for the second\\ninput. Default: any"
    batch_two: "Provide this option if input_2 is a file containing\\nmultiple terms, one per line."
    quiet: "Do not print process information"
    directory_dot: "-t {ARO,gene,antibiotic,target,any}, --term {ARO,gene,antibiotic,target,any}"
  }
  output {
    File out_stdout = stdout()
  }
}