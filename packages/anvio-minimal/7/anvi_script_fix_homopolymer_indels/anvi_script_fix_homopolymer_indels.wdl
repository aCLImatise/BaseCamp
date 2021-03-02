version 1.0

task Anviscriptfixhomopolymerindels {
  input {
    File? input_fast_a
    File? reference_fast_a
    File? output_fast_a
    Int? min_homopolymer_length
    Boolean? verbose
    Int? num_threads
    Boolean? test_run
  }
  command <<<
    anvi_script_fix_homopolymer_indels \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(reference_fast_a) then ("--reference-fasta " +  '"' + reference_fast_a + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if defined(min_homopolymer_length) then ("--min-homopolymer-length " +  '"' + min_homopolymer_length + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if (test_run) then "--test-run" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    input_fast_a: "A FASTA file of sequences you wish to fix (default:\\nNone)"
    reference_fast_a: "A FASTA file for reference sequences (default: None)"
    output_fast_a: "Corrected FASTA file (default: None)"
    min_homopolymer_length: "Minimum number of identical nucleotides next to each\\nother PLUS THE GAP CHARACTER to be considered a\\nhomopolymer when these nucleotides are aligned to a\\nregion in the other sequnce that is all composed of\\nthe same nucleotides. Confused? Read on. The default\\nis 3. So when this value is 2, the program would\\nconsider the following to match the definition of\\nminimum homopolymer length to be considered for\\nfixing: (R)eference: 'AA-' and (Q)uery: 'AAA'. The\\nsame would be true for R: 'AA---' / Q: 'AAAAA' but not\\nR: 'A-' / Q: 'AA' In contrast, when this value is 3,\\nthen the minimum that would work would be this: R:\\n'AAA-', Q: 'AAAA'. Obviously, you shouldn't go any\\nlower than 2, but then why should you listen to a\\ncomputer?"
    verbose: "Be verbose, print more messages whenever possible.\\n(default: False)"
    num_threads: "Maximum number of threads to use for multithreading\\nwhenever possible. Very conservatively, the default is\\n1. It is a good idea to not exceed the number of CPUs\\n/ cores on your system. Plus, please be careful with\\nthis option if you are running your commands on a SGE\\n--if you are clusterizing your runs, and asking for\\nmultiple threads to use, you may deplete your\\nresources very fast. (default: 1)"
    test_run: "Just do a test run and nothing more. (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}