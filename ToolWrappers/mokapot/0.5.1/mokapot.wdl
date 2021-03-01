version 1.0

task Mokapot {
  input {
    Directory? dest_dir
    File? file_root
    File? proteins
    File? decoy_prefix
    String? enzyme
    Int? missed_cleavages
    Boolean? clip_n_term_methionine
    Int? min_length
    Int? max_length
    Boolean? semi
    String? train_fdr
    String? test_fdr
    Int? max_iter
    Int? seed
    String? direction
    Boolean? aggregate
    Int? subset_max_train
    Boolean? override
    Boolean? save_models
    String? verbosity
    String pin_files
    String format_dot
    String objects_dot
  }
  command <<<
    mokapot \
      ~{pin_files} \
      ~{format_dot} \
      ~{objects_dot} \
      ~{if defined(dest_dir) then ("--dest_dir " +  '"' + dest_dir + '"') else ""} \
      ~{if defined(file_root) then ("--file_root " +  '"' + file_root + '"') else ""} \
      ~{if defined(proteins) then ("--proteins " +  '"' + proteins + '"') else ""} \
      ~{if defined(decoy_prefix) then ("--decoy_prefix " +  '"' + decoy_prefix + '"') else ""} \
      ~{if defined(enzyme) then ("--enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(missed_cleavages) then ("--missed_cleavages " +  '"' + missed_cleavages + '"') else ""} \
      ~{if (clip_n_term_methionine) then "--clip_nterm_methionine" else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(max_length) then ("--max_length " +  '"' + max_length + '"') else ""} \
      ~{if (semi) then "--semi" else ""} \
      ~{if defined(train_fdr) then ("--train_fdr " +  '"' + train_fdr + '"') else ""} \
      ~{if defined(test_fdr) then ("--test_fdr " +  '"' + test_fdr + '"') else ""} \
      ~{if defined(max_iter) then ("--max_iter " +  '"' + max_iter + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(direction) then ("--direction " +  '"' + direction + '"') else ""} \
      ~{if (aggregate) then "--aggregate" else ""} \
      ~{if defined(subset_max_train) then ("--subset_max_train " +  '"' + subset_max_train + '"') else ""} \
      ~{if (override) then "--override" else ""} \
      ~{if (save_models) then "--save_models" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mokapot:0.5.1--py_0"
  }
  parameter_meta {
    dest_dir: "The directory in which to write the result files.\\nDefaults to the current working directory"
    file_root: "The prefix added to all file names."
    proteins: "The FASTA file used for the database search. Using\\nthis option enable protein-level confidence estimates\\nusing the 'picked-protein' approach. Note that the\\nFASTA file must contain both target and decoy\\nsequences. Additionally, verify that the '--enzyme', '\\n--missed_cleavages, '--min_length', '--max_length', '\\n--semi', '--clip_nterm_methionine', and '--\\ndecoy_prefix' parameters match your search engine\\nconditions."
    decoy_prefix: "The prefix used to indicate a decoy protein in the\\nFASTA file. For mokapot to provide accurate confidence\\nestimates, decoy proteins should have same description\\nas the target proteins they were generated from, but\\nthis string prepended."
    enzyme: "A regular expression defining the enzyme specificity.\\nThe cleavage site is interpreted as the end of the\\nmatch. The default is trypsin, without proline\\nsuppression: [KR]"
    missed_cleavages: "The allowed number of missed cleavages"
    clip_n_term_methionine: "Remove methionine residues that occur at the protein\\nN-terminus."
    min_length: "The minimum peptide length to consider."
    max_length: "The maximum peptide length to consider."
    semi: "Was a semi-enzymatic digest used to assign PSMs?\\nIf'so, the protein database will likely contain shared\\npeptides and yield unhelpful protein-level confidence\\nestimates. We do not recommend using this option."
    train_fdr: "The maximum false discovery rate at which to consider\\na target PSM as a positive example during model\\ntraining."
    test_fdr: "The false-discovery rate threshold at which to\\nevaluate the learned models."
    max_iter: "The number of iterations to use for training."
    seed: "An integer to use as the random seed."
    direction: "The name of the feature to use as the initial\\ndirection for ranking PSMs. The default automatically\\nselects the feature that finds the most PSMs below the\\n`train_fdr`."
    aggregate: "If used, PSMs from multiple PIN files will be\\naggregated and analyzed together. Otherwise, a joint\\nmodel will be trained, but confidence estimates will\\nbe calculated separately for each PIN file. This flag\\nonly has an effect when multiple PIN files are\\nprovided."
    subset_max_train: "Use only a random subset of PSMs for training. This is\\nuseful for very large datasets."
    override: "Use the learned model even if it performs worse than\\nthe best feature."
    save_models: "Save the models learned by mokapot as pickled Python"
    verbosity: "Specify the verbosity of the current process. Each\\nlevel prints the following messages, including all\\nthose at a lower verbosity: 0-errors, 1-warnings,\\n2-messages, 3-debug info.\\n"
    pin_files: "A collection of PSMs in the Percolator tab-delimited"
    format_dot: "optional arguments:"
    objects_dot: "--folds FOLDS         The number of cross-validation folds to use. PSMs"
  }
  output {
    File out_stdout = stdout()
  }
}