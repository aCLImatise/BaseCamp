version 1.0

task Kocospl {
  input {
    String? literal
    File? regex
    Int? order
    String? trace
    String bigram
  }
  command <<<
    kocos_pl \
      ~{bigram} \
      ~{if defined(literal) then ("--literal " +  '"' + literal + '"') else ""} \
      ~{if defined(regex) then ("--regex " +  '"' + regex + '"') else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(trace) then ("--trace " +  '"' + trace + '"') else ""}
  >>>
  parameter_meta {
    literal: "Specify the target word directly on command line as a literal."
    regex: "Specify a file containing Perl regular expression/s that define\\nthe target word."
    order: "Specify the value of K (K>0) to find the kth order co-occurrences.\\nA Kth order co-occurrence is a word that co-occurs with a (K-1)th\\norder co-occurrence of the target word.\\nBy default, the value of K is set to 1 which simply lists the\\nwords that co-occur with a given target word. When K is 2, all words\\nthat co-occur with the words that co-occur with the target word are\\nshown, and so on for higher orders."
    trace: "Specify the name of a TRACEFILE to see a detailed trace report\\nshowing  the chains of co-occurrences. A chain shows how a Kth\\norder co-occurrence is reached as a sequence of K lower order\\nco-occurrences.\\ne.g. WORD->First->Second->Third..->Kth\\nshows that 'First' is a first order co-occurrence of WORD,\\n'Second' is a second order co-occurrence of WORD which co-occurs\\nwith 'First'. 'Third' is a third order co-occurrence of WORD which\\nco-occurs with 'Second' and so on until K is reached."
    bigram: ""
  }
  output {
    File out_stdout = stdout()
  }
}