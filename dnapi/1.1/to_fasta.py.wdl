version 1.0

task ToFastapy {
  input {
    Int? three
    Int? five
    Int? trim_five_p
    Int? trim_three_p
    Int? seed_five_p
    Int? seed_three_p
    Int? minimum_read_length
    Int? maximum_read_length
    Boolean? sensitive_adapter_search
    Boolean? only_print_reads
    Boolean? print_reads_specified
  }
  command <<<
    to_fasta_py \
      ~{if defined(three) then ("-3 " +  '"' + three + '"') else ""} \
      ~{if defined(five) then ("-5 " +  '"' + five + '"') else ""} \
      ~{if defined(trim_five_p) then ("--trim-5p " +  '"' + trim_five_p + '"') else ""} \
      ~{if defined(trim_three_p) then ("--trim-3p " +  '"' + trim_three_p + '"') else ""} \
      ~{if defined(seed_five_p) then ("--seed-5p " +  '"' + seed_five_p + '"') else ""} \
      ~{if defined(seed_three_p) then ("--seed-3p " +  '"' + seed_three_p + '"') else ""} \
      ~{if defined(minimum_read_length) then ("-m " +  '"' + minimum_read_length + '"') else ""} \
      ~{if defined(maximum_read_length) then ("-x " +  '"' + maximum_read_length + '"') else ""} \
      ~{if (sensitive_adapter_search) then "-s" else ""} \
      ~{if (only_print_reads) then "-B" else ""} \
      ~{if (print_reads_specified) then "-a" else ""}
  >>>
  parameter_meta {
    three: "3'adapter sequence"
    five: "5'adapter sequence"
    trim_five_p: "trim specified number of bases from 5'ends"
    trim_three_p: "trim specified number of bases from 3'ends"
    seed_five_p: "5' adapter match length in bp (default: 7)"
    seed_three_p: "3' adapter match length in bp (default: 7)"
    minimum_read_length: "minimum read length in bp (default: 16)"
    maximum_read_length: "maximum read length in bp (default: 36)"
    sensitive_adapter_search: "sensitive adapter search with 1 mismatch (default: off)"
    only_print_reads: "only print the reads with both 5' and 3' adapter matches"
    print_reads_specified: "print all reads with and without adapter matches if the reads\\nare in the range specified with '-m' and '-x'\\n"
  }
  output {
    File out_stdout = stdout()
  }
}