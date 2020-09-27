version 1.0

task Mia {
  input {
    File? s_substitution_matrix
    Int? database_repeat_keep
    Boolean? consensus_calling_default
    String? r
  }
  command <<<
    mia \
      ~{if defined(s_substitution_matrix) then ("-f " +  '"' + s_substitution_matrix + '"') else ""} \
      ~{if defined(database_repeat_keep) then ("-u " +  '"' + database_repeat_keep + '"') else ""} \
      ~{if (consensus_calling_default) then "-p" else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    s_substitution_matrix: "-s <substitution matrix file> (if not supplied an default matrix is used)\\n-m <root file name for maln output file(s)> (assembly.maln.iter)"
    database_repeat_keep: "database has repeat sequences, keep one based on alignment score\\n-U fasta database has repeat sequences, keep one based on sum of q-scores\\n-C<tolerance> collapse sequences with same start, end, strand info into a single sequence\\nAllow <tolerance> bases difference for start and end coordinates\\nImportant: keep NO SPACE between parameter and value: e.g. -C3\\n-A use adapter presence and coordinate information to more aggressively\\nremove repeat sequences - suitable only for 454 sequences that have not\\nalready been adapter trimmed\\n-T fasta database has adapters, trim these\\n-a <adapter sequence or code>\\n-k <use kmer filter with kmers of this length>\\n-I <filename of list of sequence IDs to use, ignoring all others>"
    consensus_calling_default: "<consensus calling code; default = 1>\\n-c means reference/assembly is circular\\n-i iterate assembly until convergence (default)\\n-n do not iterate assembly until convergence\\n-F <only output the FINAL assembly, not each iteration>\\n-D <distantly related reference sequence>\\n-h give special discount for homopolymer gaps\\n-M <use lower-case soft-masking of kmers>\\n-H <do not do dynamic score cutoff, instead use this Hard score cutoff>\\n-S <slope of length/score cutoff line>\\n-N <intercept of length/score cutoff line>"
    r: ""
  }
  output {
    File out_stdout = stdout()
    File out_s_substitution_matrix = "${in_s_substitution_matrix}"
  }
}