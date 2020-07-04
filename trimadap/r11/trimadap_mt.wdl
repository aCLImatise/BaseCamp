version 1.0

task TrimadapMt {
  input {
    String? five
    String? three
    Int? min_length
    Int? min_score
    Int? trim_down
    Float? max_difference
    Int? number_trimmer_threads
    Boolean? print_version_number
    String in_dot_fq
  }
  command <<<
    trimadap-mt \
      ~{in_dot_fq} \
      ~{if defined(five) then ("-5 " +  '"' + five + '"') else ""} \
      ~{if defined(three) then ("-3 " +  '"' + three + '"') else ""} \
      ~{if defined(min_length) then ("-l " +  '"' + min_length + '"') else ""} \
      ~{if defined(min_score) then ("-s " +  '"' + min_score + '"') else ""} \
      ~{if defined(trim_down) then ("-t " +  '"' + trim_down + '"') else ""} \
      ~{if defined(max_difference) then ("-d " +  '"' + max_difference + '"') else ""} \
      ~{if defined(number_trimmer_threads) then ("-p " +  '"' + number_trimmer_threads + '"') else ""} \
      ~{true="-v" false="" print_version_number}
  >>>
  parameter_meta {
    five: "5'-end adapter"
    three: "3'-end adapter"
    min_length: "min length [0]"
    min_score: "min score [15]"
    trim_down: "trim down [don't trim]"
    max_difference: "max difference [0.150]"
    number_trimmer_threads: "number of trimmer threads [1]"
    print_version_number: "print version number"
    in_dot_fq: ""
  }
}