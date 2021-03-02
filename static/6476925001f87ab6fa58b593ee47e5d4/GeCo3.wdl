version 1.0

task GeCo3 {
  input {
    Boolean? force
    Boolean? verbose
    Boolean? examples
    Boolean? show_levels
    Boolean? estimate
    Boolean? compression_level_integer
    Boolean? lr
    Boolean? hs
    Boolean? tm
    Boolean? rm
    Boolean? reference_sequence_filename
  }
  command <<<
    GeCo3 \
      ~{if (force) then "--force" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (examples) then "--examples" else ""} \
      ~{if (show_levels) then "--show-levels" else ""} \
      ~{if (estimate) then "--estimate" else ""} \
      ~{if (compression_level_integer) then "-l" else ""} \
      ~{if (lr) then "-lr" else ""} \
      ~{if (hs) then "-hs" else ""} \
      ~{if (tm) then "-tm" else ""} \
      ~{if (rm) then "-rm" else ""} \
      ~{if (reference_sequence_filename) then "-r" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/geco3:1.0--h516909a_0"
  }
  parameter_meta {
    force: "force mode. Overwrites old files."
    verbose: "verbose mode (more information)."
    examples: "show several running examples (parameter examples)."
    show_levels: "show pre-computed compression levels (configured parameters)."
    estimate: "it creates a file with the extension \\\".iae\\\" with the\\nrespective information content. If the file is FASTA or\\nFASTQ it will only use the \\\"ACGT\\\" (genomic) sequence."
    compression_level_integer: "[NUMBER],  --level [NUMBER]\\nCompression level (integer [1;16]).\\nDefault level: 5.\\nIt defines compressibility in balance with computational\\nresources (RAM & time). Use -s for levels perception."
    lr: "[NUMBER],  --learning-rate [NUMBER]\\nLearning rate (real).\\nDefault rate: 0.03.\\nIt defines learning rate the neural network uses."
    hs: "[NUMBER],  --hidden-size [NUMBER]\\nHidden layer size (integer).\\nDefault size: 40.\\nIt defines number of hidden nodes for the neural network."
    tm: "[NB_C]:[NB_D]:[NB_I]:[NB_H]:[NB_G]/[NB_S]:[NB_E]:[NB_A]\\nTemplate of a target context model.\\nParameters:\\n[NB_C]: (integer [1;20]) order size of the regular context\\nmodel. Higher values use more RAM but, usually, are\\nrelated to a better compression score.\\n[NB_D]: (integer [1;5000]) denominator to build alpha, which\\nis a parameter estimator. Alpha is given by 1/[NB_D].\\nHigher values are usually used with higher [NB_C],\\nand related to confiant bets. When [NB_D] is one,\\nthe probabilities assume a Laplacian distribution.\\n[NB_I]: (integer {0,1,2}) number to define if a sub-program\\nwhich addresses the specific properties of DNA\\nsequences (Inverted repeats) is used or not. The\\nnumber 2 turns ON this sub-program without the\\nregular context model (only inverted repeats). The\\nnumber 1 turns ON the sub-program using at the same\\ntime the regular context model. The number 0 does\\nnot contemple its use (Inverted repeats OFF). The\\nuse of this sub-program increases the necessary time\\nto compress but it does not affect the RAM.\\n[NB_H]: (integer [1;254]) size of the cache-hash for deeper\\ncontext models, namely for [NB_C] > 14. When the\\n[NB_C] <= 14 use, for example, 1 as a default. The\\nRAM is highly dependent of this value (higher value\\nstand for higher RAM).\\n[NB_G]: (real [0;1)) real number to define gamma. This value\\nrepresents the decayment forgetting factor of the\\nregular context model in definition.\\n[NB_S]: (integer [0;20]) maximum number of editions allowed\\nto use a substitutional tolerant model with the same\\nmemory model of the regular context model with\\norder size equal to [NB_C]. The value 0 stands for\\nturning the tolerant context model off. When the\\nmodel is on, it pauses when the number of editions\\nis higher that [NB_C], while it is turned on when\\na complete match of size [NB_C] is seen again. This\\nis probabilistic-algorithmic model very usefull to\\nhandle the high substitutional nature of genomic\\nsequences. When [NB_S] > 0, the compressor used more\\nprocessing time, but uses the same RAM and, usually,\\nachieves a substantial higher compression ratio. The\\nimpact of this model is usually only noticed for\\n[NB_C] >= 14.\\n[NB_E]: (integer [1;5000]) denominator to build alpha for\\nsubstitutional tolerant context model. It is\\nanalogous to [NB_D], however to be only used in the\\nprobabilistic model for computing the statistics of\\nthe substitutional tolerant context model.\\n[NB_A]: (real [0;1)) real number to define gamma. This value\\nrepresents the decayment forgetting factor of the\\nsubstitutional tolerant context model in definition.\\nIts definition and use is analogus to [NB_G]."
    rm: "[NB_C]:[NB_D]:[NB_I]:[NB_H]:[NB_G]/[NB_S]:[NB_E]:[NB_A]\\nTemplate of a reference context model.\\nUse only when -r [FILE] is set (referential compression).\\nParameters: the same as in -tm."
    reference_sequence_filename: "[FILE], --reference [FILE]\\nReference sequence filename (\\\"-rm\\\" are trainned here).\\nExample: -r file1.txt."
  }
  output {
    File out_stdout = stdout()
  }
}