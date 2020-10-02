version 1.0

task RsatDyadanalysis {
  input {
    String sequences
    String oligonucleotide_dot
    String expdyad__expoligoexpoligo
    Int x_one
    String accuracy_dot
    String over_slash_under_representation
    String e_value
  }
  command <<<
    rsat dyad_analysis \
      ~{sequences} \
      ~{oligonucleotide_dot} \
      ~{expdyad__expoligoexpoligo} \
      ~{x_one} \
      ~{accuracy_dot} \
      ~{over_slash_under_representation} \
      ~{e_value}
  >>>
  parameter_meta {
    sequences: "pattern-discovery"
    oligonucleotide_dot: "Sig value higher than 0"
    expdyad__expoligoexpoligo: "exp(dyad) = exp(oligo1)*exp(oligo2)"
    x_one: "P(X>=x) =  1 - SUM P(j)"
    accuracy_dot: "Interpretation: the P-value (Pval) represents the nominal risk"
    over_slash_under_representation: "By default, the program calculates the P-value on the right\\ntail of the probability distribution, which represents the\\nprobability to observe at least x occurrences by chance:\\nT\\nP(X>=x) = SUM P(X=i)\\ni=x\\nWith the option -under, the P-value is calculated on the left\\ntail of the distribution, which represents the probability of\\nhaving at most x occurrences:\\nx-1\\nP(X<=x) =  SUM P(X=i)\\ni=0\\nThe option -under does not affect the other statistics\\n(zscore, loglikelihood). For z-score, the negative values\\nindicate under-representation.\\nWith the option -two_tails, the P-value is calculated on\\neither the left or the right-tail of the distribution,\\ndepending on the observed/expected comparison:\\nif k >= exp_occ, right tail (over-representation)\\nif k < exp_occ, left tail (under-representation)"
    e_value: "The probability of occurrence by itself is not fully\\ninformative, because the threshold must be adapted depending\\non the number of patterns considered. Indeed, a simple\\nhexanucleotide analysis amounts to consider 4096\\nhypotheses.\\nThe E-value (Eval) represents the expected number of patterns\\nwhich would be returned at random for a given threshold of\\nnominal P-value.\\nEval = NPO * P(X>=x)\\nwhere NPO is the number of possible oligomers of the chosen\\nlength (eg 4096 for hexanucleotides).\\nNote that when searches are performed on both strands, NPO is\\ncorrected for the fact that non-palindromic patterns are\\ngrouped by pairs (for example, there are 4096 possible\\nhexanucleotides when the count is performed on a single\\nstrand, but only 2080 when the count is performed on both\\nstrands).\\nInterpretation: the E-value (Eval) represents the expected\\nnumber of false positives, for a given threshold of P-value\\n(Pval)."
  }
  output {
    File out_stdout = stdout()
  }
}