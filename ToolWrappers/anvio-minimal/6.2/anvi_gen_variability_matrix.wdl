version 1.0

task Anvigenvariabilitymatrix {
  input {
    String? contigs_db
    File? splits_of_interest
    File? samples_of_interest
    Int? num_positions_from_each_split
    Int? min_scatter
    Int? min_ratio_of_competing_s_nts
    File? output_file
  }
  command <<<
    anvi_gen_variability_matrix \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{if defined(splits_of_interest) then ("--splits-of-interest " +  '"' + splits_of_interest + '"') else ""} \
      ~{if defined(samples_of_interest) then ("--samples-of-interest " +  '"' + samples_of_interest + '"') else ""} \
      ~{if defined(num_positions_from_each_split) then ("--num-positions-from-each-split " +  '"' + num_positions_from_each_split + '"') else ""} \
      ~{if defined(min_scatter) then ("--min-scatter " +  '"' + min_scatter + '"') else ""} \
      ~{if defined(min_ratio_of_competing_s_nts) then ("--min-ratio-of-competings-nts " +  '"' + min_ratio_of_competing_s_nts + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    contigs_db: "Anvi'o contigs database generated by 'anvi-gen-\\ncontigs'"
    splits_of_interest: "A file with split names. There should be only one\\ncolumn in the file, and each line should correspond to\\na unique split name."
    samples_of_interest: "A file with samples names. There should be only one\\ncolumn in the file, and each line should correspond to\\na unique sample name (without a column header)."
    num_positions_from_each_split: "Each split may have one or more variable positions. By\\ndefault, anvi'o will report every SNV position found\\nin a given split. This parameter will help you to\\ndefine a cutoff for the maximum number of SNVs to be\\nreported from a split (if the number of SNVs is more\\nthan the number you declare using this parameter, the\\npositions will be randomly subsampled)."
    min_scatter: "This one is tricky. If you have N samples in your\\ndataset, a given variable position x in one of your\\nsplits can split your N samples into `t` groups based\\non the identity of the variation they harbor at\\nposition x. For instance, `t` would have been 1, if\\nall samples had the same type of variation at position\\nx (which would not be very interesting, because in\\nthis case position x would have zero contribution to a\\ndeeper understanding of how these samples differ based\\non variability. When `t` > 1, it would mean that\\nidentities at position x across samples do differ. But\\nhow much scattering occurs based on position x when t\\n> 1? If t=2, how many samples ended in each group?\\nObviously, even distribution of samples across groups\\nmay tell us something different than uneven\\ndistribution of samples across groups. So, this\\nparameter filters out any x if 'the number of samples\\nin the second largest group' (=scatter) is less than\\n-m. Here is an example: let's assume you have 7\\nsamples. While 5 of those have AG, 2 of them have TC\\nat position x. This would mean scatter of x is 2. If\\nyou set -m to 2, this position would not be reported\\nin your output matrix. The default value for -m is 0,\\nwhich means every `x` found in the database and\\nsurvived previous filtering criteria will be reported.\\nNaturally, -m cannot be more than half of the number\\nof samples. Please refer to the user documentation if\\nthis is confusing."
    min_ratio_of_competing_s_nts: "Minimum ratio of the competing nucleotides at a given\\nposition. Default is 0."
    output_file: "File path to store results.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}