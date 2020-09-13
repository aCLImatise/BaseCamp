version 1.0

task Triqler {
  input {
    File? out_file
    Float? fold_change_eval
    String? decoy_pattern
    Int? min_samples
    Int? num_threads
    Boolean? t_test
    Boolean? write_spectrum_quants
    File? write_protein_posteriors
    File? write_group_posteriors
    File? write_fold_change_posteriors
  }
  command <<<
    triqler \
      ~{if defined(out_file) then ("--out_file " +  '"' + out_file + '"') else ""} \
      ~{if defined(fold_change_eval) then ("--fold_change_eval " +  '"' + fold_change_eval + '"') else ""} \
      ~{if defined(decoy_pattern) then ("--decoy_pattern " +  '"' + decoy_pattern + '"') else ""} \
      ~{if defined(min_samples) then ("--min_samples " +  '"' + min_samples + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if (t_test) then "--ttest" else ""} \
      ~{if (write_spectrum_quants) then "--write_spectrum_quants" else ""} \
      ~{if defined(write_protein_posteriors) then ("--write_protein_posteriors " +  '"' + write_protein_posteriors + '"') else ""} \
      ~{if defined(write_group_posteriors) then ("--write_group_posteriors " +  '"' + write_group_posteriors + '"') else ""} \
      ~{if defined(write_fold_change_posteriors) then ("--write_fold_change_posteriors " +  '"' + write_fold_change_posteriors + '"') else ""}
  >>>
  parameter_meta {
    out_file: "Path to output file (writing in TSV format). N.B. if\\nmore than 2 treatment groups are present, suffixes\\nwill be added before the file extension. (default:\\nproteins.tsv)"
    fold_change_eval: "log2 fold change evaluation threshold. (default: 1.0)"
    decoy_pattern: "Prefix for decoy proteins. (default: decoy_)"
    min_samples: "Minimum number of samples a peptide needed to be\\nquantified in. (default: 2)"
    num_threads: "Number of threads, by default this is equal to the\\nnumber of CPU cores available on the device. (default:\\n8)"
    t_test: "Use t-test for evaluating differential expression\\ninstead of posterior probabilities. (default: False)"
    write_spectrum_quants: "Write quantifications for consensus spectra. Only\\nworks if consensus spectrum index are given in input.\\n(default: False)"
    write_protein_posteriors: "Write raw data of protein posteriors to the specified\\nfile in TSV format. (default: )"
    write_group_posteriors: "Write raw data of treatment group posteriors to the\\nspecified file in TSV format. (default: )"
    write_fold_change_posteriors: "Write raw data of fold change posteriors to the\\nspecified file in TSV format. (default: )\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}