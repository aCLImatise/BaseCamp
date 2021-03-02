version 1.0

task Hugecountpl {
  input {
    Boolean? token_list
    Int? split
    File? token
    File? non_token
    File? stop
    Int? window
    String? remove
    String? u_remove
    String? frequency
    String? u_frequency
    Boolean? new_line
    String destination
    String? source
  }
  command <<<
    huge_count_pl \
      ~{destination} \
      ~{source} \
      ~{if (token_list) then "--tokenlist" else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if defined(token) then ("--token " +  '"' + token + '"') else ""} \
      ~{if defined(non_token) then ("--nontoken " +  '"' + non_token + '"') else ""} \
      ~{if defined(stop) then ("--stop " +  '"' + stop + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(remove) then ("--remove " +  '"' + remove + '"') else ""} \
      ~{if defined(u_remove) then ("--uremove " +  '"' + u_remove + '"') else ""} \
      ~{if defined(frequency) then ("--frequency " +  '"' + frequency + '"') else ""} \
      ~{if defined(u_frequency) then ("--ufrequency " +  '"' + u_frequency + '"') else ""} \
      ~{if (new_line) then "--newLine" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    token_list: "This option is required. Print out all bigrams list."
    split: "Number of bigrams for each seperated bigrams file."
    token: "Specify a file containing Perl regular expressions that define the\\ntokenization scheme for counting."
    non_token: "Specify a file containing Perl regular expressions of non-token\\nsequences that are removed prior to tokenization."
    stop: "Specify a file containing Perl regular expressions of stop words\\nthat are to be removed from the output bigrams."
    window: "Specify the window size for counting."
    remove: "Bigrams with counts less than L will be removed from the sample.\\nremove must be smaller than uremove."
    u_remove: "Bigrams with counts more than L will be removed from the sample.\\nuremove must be bigger than remove."
    frequency: "Bigrams with counts less than F will not be displayed.\\nfrequency must be smaller than ufrequency."
    u_frequency: "Bigrams with counts more than F will not be displayed.\\nufrequency must be bigger than frequency."
    new_line: "Prevents bigrams from spanning across the new-line characters."
    destination: ""
    source: ""
  }
  output {
    File out_stdout = stdout()
    File out_stop = "${in_stop}"
  }
}