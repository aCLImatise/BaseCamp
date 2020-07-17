version 1.0

task Water {
  input {
    Boolean? gap_open
    Boolean? gap_extend
  }
  command <<<
    water \
      ~{true="-gapopen" false="" gap_open} \
      ~{true="-gapextend" false="" gap_extend}
  >>>
  parameter_meta {
    gap_open: "float      [10.0 for any sequence] The gap open penalty is the score taken away when a gap is created. The best value depends on the choice of comparison matrix. The default value assumes you are using the EBLOSUM62 matrix for protein sequences, and the EDNAFULL matrix for nucleotide sequences. (Number from 0.000 to 100.000)"
    gap_extend: "float      [0.5 for any sequence] The gap extension penalty is added to the standard gap penalty for each base or residue in the gap. This is how long gaps are penalized. Usually you will expect a few long gaps rather than many short gaps, so the gap extension penalty should be lower than the gap penalty. An exception is where one or both sequences are single reads with possible sequencing errors in which case you would expect many single base gaps. You can get this result by setting the gap open penalty to zero (or very low) and using the gap extension penalty to control gap scoring. (Number from 0.000 to 10.000)"
  }
}