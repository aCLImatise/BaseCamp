version 1.0

task Meryl {
  input {
    String statistics
    String histogram
    String print
    String count
    String count_forward
    String count_reverse
    String union
    Int union_min
    Int union_max
    String union_sum
    String intersect
    Int intersect_min
    Int intersect_max
    String intersect_sum
    String subtract
    String difference
  }
  command <<<
    meryl \
      ~{statistics} \
      ~{histogram} \
      ~{print} \
      ~{count} \
      ~{count_forward} \
      ~{count_reverse} \
      ~{union} \
      ~{union_min} \
      ~{union_max} \
      ~{union_sum} \
      ~{intersect} \
      ~{intersect_min} \
      ~{intersect_max} \
      ~{intersect_sum} \
      ~{subtract} \
      ~{difference}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meryl:1.3--h1b792b2_0"
  }
  parameter_meta {
    statistics: "display total, unique, distnict, present number of the kmers on the screen.  accepts exactly one input."
    histogram: "display kmer frequency on the screen as 'frequency<tab>count'.  accepts exactly one input."
    print: "display kmers on the screen as 'kmer<tab>count'.  accepts exactly one input."
    count: "Count the occurrences of canonical kmers in the input.  must have 'output' specified."
    count_forward: "Count the occurrences of forward kmers in the input.  must have 'output' specified."
    count_reverse: "Count the occurrences of reverse kmers in the input.  must have 'output' specified.\\nk=<K>              create mers of size K bases (mandatory).\\nn=<N>              expect N mers in the input (optional; for precise memory sizing).\\nmemory=M           use no more than (about) M GB memory.\\nthreads=T          use no more than T threads.\\ncompress           compress homopolymer runs to a single letter."
    union: "return kmers that occur in any input, set the count to the number of inputs with this kmer."
    union_min: "return kmers that occur in any input, set the count to the minimum count"
    union_max: "return kmers that occur in any input, set the count to the maximum count"
    union_sum: "return kmers that occur in any input, set the count to the sum of the counts"
    intersect: "return kmers that occur in all inputs, set the count to the count in the first input."
    intersect_min: "return kmers that occur in all inputs, set the count to the minimum count."
    intersect_max: "return kmers that occur in all inputs, set the count to the maximum count."
    intersect_sum: "return kmers that occur in all inputs, set the count to the sum of the counts."
    subtract: "return kmers that occur in the first input, subtracting counts from the other inputs"
    difference: "return kmers that occur in the first input, but none of the other inputs"
  }
  output {
    File out_stdout = stdout()
  }
}