version 1.0

task ProbScan {
  input {
    Boolean? hairpin
    Boolean? bulge
    Boolean? dna
    Boolean? internal
    Boolean? sequence
    Boolean? helix
    Boolean? multi_branch
    Boolean? pairs
    File input_file
  }
  command <<<
    ProbScan \
      ~{input_file} \
      ~{if (hairpin) then "--hairpin" else ""} \
      ~{if (bulge) then "--bulge" else ""} \
      ~{if (dna) then "--DNA" else ""} \
      ~{if (internal) then "--internal" else ""} \
      ~{if (sequence) then "--sequence" else ""} \
      ~{if (helix) then "--helix" else ""} \
      ~{if (multi_branch) then "--multibranch" else ""} \
      ~{if (pairs) then "--pairs" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    hairpin: "Print probabilities for all possible hairpin loops."
    bulge: "Print probabilities for all possible bulge loops."
    dna: "Specify that the sequence is DNA, and DNA parameters are to be used.\\nDefault is to use RNA parameters."
    internal: "Print probabilities for all possible internal loops."
    sequence: "Provide RNA from sequence file. Partition function will be calculated (may\\ntake a while); if you're going to query the same sequence repeatedly, you\\ncould save a lot of time by running from a partition function save file\\nproduced by the 'partition' program."
    helix: "Print probabilities for all possible helices with this number of base pair\\nstacks. To get single base pair stacks, use -e 1."
    multi_branch: "Provide a file with multibranch loops. These multibranch loops'\\nprobabilities will be checked."
    pairs: "Calculate probability for a user-specified loop. The loop must be provided\\nas a set of pairs of nucleotide indices, where the nucs in the pair are\\ndelimited by dashes and each pair is delimited by a comma; eg '-e 5-20'\\nwill show the probability of a hairpin loop closed by a pair between\\nnucleotides 5 and 20, and '-e 10-120,15-70,75-110' will give the\\nprobability of a three-way junction where the exiting helices are closed by\\npairs at 10-120, 15-70, and 75-110.\\n"
    input_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}