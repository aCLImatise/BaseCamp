version 1.0

task Kaijumkbwt {
  input {
    Boolean? out_filename
    Boolean? alphabet
    Boolean? n_threads
    Boolean? length
    Boolean? checkpoint
    Boolean? case_sens
    Boolean? rev_comp
    Boolean? term
    Boolean? rev_sort
  }
  command <<<
    kaiju_mkbwt \
      ~{if (out_filename) then "-outfilename" else ""} \
      ~{if (alphabet) then "-Alphabet" else ""} \
      ~{if (n_threads) then "-nThreads" else ""} \
      ~{if (length) then "-length" else ""} \
      ~{if (checkpoint) then "-checkpoint" else ""} \
      ~{if (case_sens) then "-caseSens" else ""} \
      ~{if (rev_comp) then "-revComp" else ""} \
      ~{if (term) then "-term" else ""} \
      ~{if (rev_sort) then "-revsort" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out_filename: "(string)\\nName of output. Several files with different extensions are produced\\n(if not given, input file name is used).\\nValue:  NULL (null)"
    alphabet: "(string)\\nAlphabet used. Must end with the sequence terminator. Instead of alphabet\\nyou can specify DNA, RNA or protein, in which case the alphabet is ACGT,\\nACGU, or ACDEFGHIKLMNPQRSTVWYX\\nValue:  protein"
    n_threads: "(integer)\\nNumber of threads\\nValue:  2"
    length: "(double)\\nLength of concatenated sequence in millions (one decimal, round up).\\nUsed when reading from stdin. If file name is given, length is estimated\\nfrom file size and length needs not be specified.\\nValue:  0.000000"
    checkpoint: "(integer)\\nExponent for suffix array checkpoints. There is a checkpoint for every\\n2^e points. Value around 5 is a good compromise between speed and space.\\nValue:  5"
    case_sens: "The sequence is read case sensitive\\nValue: OFF"
    rev_comp: "Reverse complement sequence. Works only for DNA.\\nValue: OFF"
    term: "(string)\\nTerminating symbol (only used for debugging)\\nValue:  *"
    rev_sort: "The termination symbols sorts as reverse sequences. This will make the\\nBWT more compressible.\\nValue: OFF"
  }
  output {
    File out_stdout = stdout()
  }
}