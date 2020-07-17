version 1.0

task ToFasta.py {
  input {
    String? three
    String? five
    String? trim_five_p
    String? trim_three_p
    String? seed_five_p
    String? seed_three_p
    String? minimum_read_length
    String? maximum_read_length
    Boolean? sensitive_adapter_search
    Boolean? only_print_reads
    Boolean? print_reads_specified
    String fast_q
  }
  command <<<
    to_fasta.py \
      ~{fast_q} \
      ~{if defined(three) then ("-3 " +  '"' + three + '"') else ""} \
      ~{if defined(five) then ("-5 " +  '"' + five + '"') else ""} \
      ~{if defined(trim_five_p) then ("--trim-5p " +  '"' + trim_five_p + '"') else ""} \
      ~{if defined(trim_three_p) then ("--trim-3p " +  '"' + trim_three_p + '"') else ""} \
      ~{if defined(seed_five_p) then ("--seed-5p " +  '"' + seed_five_p + '"') else ""} \
      ~{if defined(seed_three_p) then ("--seed-3p " +  '"' + seed_three_p + '"') else ""} \
      ~{if defined(minimum_read_length) then ("-m " +  '"' + minimum_read_length + '"') else ""} \
      ~{if defined(maximum_read_length) then ("-x " +  '"' + maximum_read_length + '"') else ""} \
      ~{true="-s" false="" sensitive_adapter_search} \
      ~{true="-B" false="" only_print_reads} \
      ~{true="-a" false="" print_reads_specified}
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
    print_reads_specified: "print all reads with and without adapter matches if the reads are in the range specified with '-m' and '-x'"
    fast_q: "including stdin or compressed file {zip,gz,tar,bz}"
  }
}