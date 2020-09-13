version 1.0

task Homer {
  input {
    Boolean? prot
    File? _sequence_file
    File? _groupstat_file
    File? mer
    File? pssm_motif_file
    File? output_file_prefix
    File? seed
    Boolean? offset
    Boolean? exact
    Boolean? weight_sequences_according
    Boolean? test_sequences_sequences
    Boolean? no_autoscale
    Boolean? freq_adjust
    Boolean? dual
    Boolean? flip
    Boolean? z_oops_approx
    Boolean? norev_opp
    Boolean? min
    Boolean? max
    Boolean? len
    Boolean? gap
    Boolean? mis
    Boolean? iupac
    Boolean? iupac_type
    Boolean? number_seeds_check
    Boolean? branch
    Boolean? maximum_number_iterations
    Boolean? rm_align
    Int? max_neg
    String? speed
    Int? alg
    String? markov_generate_using
    Float? filtering_cutoff_ratio
    Boolean? seq_less
    Boolean? seq_more
  }
  command <<<
    homer \
      ~{if (prot) then "-prot" else ""} \
      ~{if defined(_sequence_file) then ("-s " +  '"' + _sequence_file + '"') else ""} \
      ~{if defined(_groupstat_file) then ("-g " +  '"' + _groupstat_file + '"') else ""} \
      ~{if defined(mer) then ("-mer " +  '"' + mer + '"') else ""} \
      ~{if defined(pssm_motif_file) then ("-m " +  '"' + pssm_motif_file + '"') else ""} \
      ~{if defined(output_file_prefix) then ("-o " +  '"' + output_file_prefix + '"') else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""} \
      ~{if (offset) then "-offset" else ""} \
      ~{if (exact) then "-exact" else ""} \
      ~{if (weight_sequences_according) then "-w" else ""} \
      ~{if (test_sequences_sequences) then "-T" else ""} \
      ~{if (no_autoscale) then "-noautoscale" else ""} \
      ~{if (freq_adjust) then "-freqAdjust" else ""} \
      ~{if (dual) then "-dual" else ""} \
      ~{if (flip) then "-flip" else ""} \
      ~{if (z_oops_approx) then "-zoopsapprox" else ""} \
      ~{if (norev_opp) then "-norevopp" else ""} \
      ~{if (min) then "-min" else ""} \
      ~{if (max) then "-max" else ""} \
      ~{if (len) then "-len" else ""} \
      ~{if (gap) then "-gap" else ""} \
      ~{if (mis) then "-mis" else ""} \
      ~{if (iupac) then "-IUPAC" else ""} \
      ~{if (iupac_type) then "-iupactype" else ""} \
      ~{if (number_seeds_check) then "-S" else ""} \
      ~{if (branch) then "-branch" else ""} \
      ~{if (maximum_number_iterations) then "-I" else ""} \
      ~{if (rm_align) then "-rmalign" else ""} \
      ~{if defined(max_neg) then ("-maxneg " +  '"' + max_neg + '"') else ""} \
      ~{if defined(speed) then ("-speed " +  '"' + speed + '"') else ""} \
      ~{if defined(alg) then ("-alg " +  '"' + alg + '"') else ""} \
      ~{if defined(markov_generate_using) then ("-b " +  '"' + markov_generate_using + '"') else ""} \
      ~{if defined(filtering_cutoff_ratio) then ("-N " +  '"' + filtering_cutoff_ratio + '"') else ""} \
      ~{if (seq_less) then "-seqless" else ""} \
      ~{if (seq_more) then "-seqmore" else ""}
  >>>
  parameter_meta {
    prot: ": Sequence type (-dna)"
    _sequence_file: ": Sequence File"
    _groupstat_file: ": Group/Stat File"
    mer: ": Mer File"
    pssm_motif_file: ": PSSM Motif File"
    output_file_prefix: ": output file prefix"
    seed: ": seed file"
    offset: "<#> : offset of sequence from TSS (-2000)"
    exact: ": remember mapping between mers and genes (default: approx)"
    weight_sequences_according: ": Weight sequences (according to addition columns in group file: 1st-gene 2nd-sequence)"
    test_sequences_sequences: ": Test all sequences as candidate motifs (default: only test target sequences)"
    no_autoscale: ": Do not autoscale sequences to be equal in foreground and background"
    freq_adjust: ": Compute log-odds using frequency, default (0.25)"
    dual: ": find dual motifs in the form A<gap>B where A and B can be rev-opposites"
    flip: ": find dual motifs in the form A<gap>B or B<gap>A"
    z_oops_approx: "<OFF,#(max to count)> : (counts multiple motifs per sequence | default: 2)"
    norev_opp: ": don't search opposite strand (default->DNA:yes, Protein:no)"
    min: "<#> : min mer size (6)"
    max: "<#> : max mer size [also standard mer size] (10)"
    len: "<#> : Find motifs of length # (default=10)"
    gap: "<#,#,#-#> : Find motifs with gaps(0)(i.e. -gap 3 -gap 2,4,5 -gap 1-10\\nGaps will only be in the center of motif and will only use even lengthed motifs"
    mis: "<#> : # of mismatches to check for degeneracy (1)"
    iupac: "<#> : # of IUPAC codes per mer that can be used during global optimization (0)"
    iupac_type: "<1,2,or3> : Type of IUPAC symbols used\\n1: (default) Only N is used\\n2: Only N and 2 bp symbols are used (i.e. R = A or G\\n3: Full IUPAC code is used (includes 3-way symbols)"
    number_seeds_check: "<#> : number of seeds to check during profile optimization(50)"
    branch: "<#> : sets depth of optimization (closer to zero the more sensitive (0.5))"
    maximum_number_iterations: "<#> : maximum number of iterations during optimization (5)"
    rm_align: ": DO NOT remove aligned seeds"
    max_neg: "maximum percentage of negative genes that can contain the motif"
    speed: ": Program will heuristically avoid performing exhaustive\\ncalculations (default: FAST)"
    alg: ": scoring algorithm (default: hypergeo)\\nhypergeo - hypergeometric scoring (ZOOPS)\\nbinomial - binomical scoring [for variable length seq] (ZOOPS) (requires exact)\\napproxbinomial - binomical scoring [for variable length seq] (ZOOPS) (requires exact)\\nsitehypergeo - hypergeometric scoring across seq positions (very slow)\\nsitebinomial - binomial scoring across seq positions\\nfisher <#> - fisher exact test (slow, # scales exponentially)\\n<# = largest repetition to consider [default=2]>\\nrank - group file must have sortable numeric value\\nfreqdiff - used by most bayesian/nnet programs\\nlogit - used by most bayesian/nnet programs"
    markov_generate_using: "[method options...]\\nmarkov <#> - generate hmm from target sequences using a hmm of order #\\nbmarkov <#> - generate hmm from background sequences using a hmm of order #\\nmosaic - generate mosaic hmm from background sequences **coming soon**"
    filtering_cutoff_ratio: ": filtering cutoff for ratio of N's in sequence (0.9)"
    seq_less: "<#> : filter sequences shorter than #"
    seq_more: "<#> : filter sequences longer than #"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_prefix = "${in_output_file_prefix}"
  }
}