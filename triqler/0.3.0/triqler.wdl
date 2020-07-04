version 1.0

task Triqler {
  input {
    String? out_file
    String? fold_change_eval
    String? decoy_pattern
    String? min_samples
    String? num_threads
    Boolean? t_test
    Boolean? write_spectrum_quants
    String? write_protein_posteriors
    String? write_group_posteriors
    String? write_fold_change_posteriors
    String in_file
  }
  command <<<
    triqler \
      ~{in_file} \
      ~{if defined(out_file) then ("--out_file " +  '"' + out_file + '"') else ""} \
      ~{if defined(fold_change_eval) then ("--fold_change_eval " +  '"' + fold_change_eval + '"') else ""} \
      ~{if defined(decoy_pattern) then ("--decoy_pattern " +  '"' + decoy_pattern + '"') else ""} \
      ~{if defined(min_samples) then ("--min_samples " +  '"' + min_samples + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{true="--ttest" false="" t_test} \
      ~{true="--write_spectrum_quants" false="" write_spectrum_quants} \
      ~{if defined(write_protein_posteriors) then ("--write_protein_posteriors " +  '"' + write_protein_posteriors + '"') else ""} \
      ~{if defined(write_group_posteriors) then ("--write_group_posteriors " +  '"' + write_group_posteriors + '"') else ""} \
      ~{if defined(write_fold_change_posteriors) then ("--write_fold_change_posteriors " +  '"' + write_fold_change_posteriors + '"') else ""}
  >>>
  parameter_meta {
    out_file: "Path to output file (writing in TSV format). N.B. if more than 2 treatment groups are present, suffixes will be added before the file extension. (default: proteins.tsv)"
    fold_change_eval: "log2 fold change evaluation threshold. (default: 1.0)"
    decoy_pattern: "Prefix for decoy proteins. (default: decoy_)"
    min_samples: "Minimum number of samples a peptide needed to be quantified in. (default: 2)"
    num_threads: "Number of threads, by default this is equal to the number of CPU cores available on the device. (default: 8)"
    t_test: "Use t-test for evaluating differential expression instead of posterior probabilities. (default: False)"
    write_spectrum_quants: "Write quantifications for consensus spectra. Only works if consensus spectrum index are given in input. (default: False)"
    write_protein_posteriors: "Write raw data of protein posteriors to the specified file in TSV format. (default: )"
    write_group_posteriors: "Write raw data of treatment group posteriors to the specified file in TSV format. (default: )"
    write_fold_change_posteriors: "Write raw data of fold change posteriors to the specified file in TSV format. (default: )"
    in_file: "List of PSMs with abundances (not log transformed!) and search engine score. See README for a detailed description of the columns."
  }
}