version 1.0

task SequenceGenerate {
  input {
    Int? min
    Int? _results_sum
    Int? gc
    String sequence
    String? mode
    String? sequence_file
  }
  command <<<
    sequence generate \
      ~{sequence} \
      ~{mode} \
      ~{sequence_file} \
      ~{if defined(min) then ("-min " +  '"' + min + '"') else ""} \
      ~{if defined(_results_sum) then ("-a " +  '"' + _results_sum + '"') else ""} \
      ~{if defined(gc) then ("-gc " +  '"' + gc + '"') else ""}
  >>>
  parameter_meta {
    min: "minimum sequence length\\n-max M         maximum sequence length\\n-sequences N   generate N sequences\\n-bases B       generate at least B bases, no more than B+maxLength-1 bases.\\n-gaussian      99.73% of the reads (3 standard deviations) will be between min and max\\n-mirror F\\n-gc bias       sets GC/AT composition (default 0.50)\\n-at bias       sets GC/AT composition (default 0.50)\\n-a freq        sets frequency of A bases (default 0.25)\\n-c freq        sets frequency of C bases (default 0.25)\\n-g freq        sets frequency of G bases (default 0.25)\\n-t freq        sets frequency of T bases (default 0.25)"
    _results_sum: "-- results in a sum of 2.0 (1.25 + 0.25 + 0.25 + 0.25) so final frequencies will be:\\nA =         1.25/2 = 0.625\\nC = G = T = 0.25/2 = 0.125."
    gc: "-- sum is also 2.0, final frequencies will be:\\nA =         1.00/2 = 0.5\\nC = G =     0.40/2 = 0.2\\nT =         0.20/2 = 0.1"
    sequence: ""
    mode: ""
    sequence_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}