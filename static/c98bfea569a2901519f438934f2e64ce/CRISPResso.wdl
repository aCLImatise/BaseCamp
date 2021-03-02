version 1.0

task CRISPResso {
  input {
    Int? analysis
    Int? fast_q_r_one
    Int? fast_q_r_two
    String? amplicon_seq
    Int? guide_seq
    String? expected_hdr_amplicon_seq
    String? donor_seq
    String? coding_seq
    Int? min_average_read_quality
    Int? min_single_bp_quality
    Int? min_identity_score
    String? name
    Directory? split_paired_end
    Boolean? trim_sequences
    Float? trim_mo_matic_options_string
    Int? min_paired_end_reads_overlap
    Int? max_paired_end_reads_overlap
    Boolean? hide_mutations_outside_window_nhej
    Int? window_around_sg_rna
    Int? cleavage_offset
    Int? exclude_bp_from_left
    Int? exclude_bp_from_right
    Float? hdr_perfect_alignment_threshold
    Boolean? ignore_substitutions
    Boolean? ignore_insertions
    Boolean? ignore_deletions
    Float? needle_options_string
    Boolean? keep_intermediate
    Boolean? dump
    Boolean? save_also_png
    Int? n_processes
    Int? offset_around_cut_to_plot
    Int? min_frequency_alleles_around_cut_to_plot
    Int? max_rows_alleles_around_cut_to_plot
    Boolean? debug
  }
  command <<<
    CRISPResso \
      ~{if defined(analysis) then ("-Analysis " +  '"' + analysis + '"') else ""} \
      ~{if defined(fast_q_r_one) then ("--fastq_r1 " +  '"' + fast_q_r_one + '"') else ""} \
      ~{if defined(fast_q_r_two) then ("--fastq_r2 " +  '"' + fast_q_r_two + '"') else ""} \
      ~{if defined(amplicon_seq) then ("--amplicon_seq " +  '"' + amplicon_seq + '"') else ""} \
      ~{if defined(guide_seq) then ("--guide_seq " +  '"' + guide_seq + '"') else ""} \
      ~{if defined(expected_hdr_amplicon_seq) then ("--expected_hdr_amplicon_seq " +  '"' + expected_hdr_amplicon_seq + '"') else ""} \
      ~{if defined(donor_seq) then ("--donor_seq " +  '"' + donor_seq + '"') else ""} \
      ~{if defined(coding_seq) then ("--coding_seq " +  '"' + coding_seq + '"') else ""} \
      ~{if defined(min_average_read_quality) then ("--min_average_read_quality " +  '"' + min_average_read_quality + '"') else ""} \
      ~{if defined(min_single_bp_quality) then ("--min_single_bp_quality " +  '"' + min_single_bp_quality + '"') else ""} \
      ~{if defined(min_identity_score) then ("--min_identity_score " +  '"' + min_identity_score + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(split_paired_end) then ("--split_paired_end " +  '"' + split_paired_end + '"') else ""} \
      ~{if (trim_sequences) then "--trim_sequences" else ""} \
      ~{if defined(trim_mo_matic_options_string) then ("--trimmomatic_options_string " +  '"' + trim_mo_matic_options_string + '"') else ""} \
      ~{if defined(min_paired_end_reads_overlap) then ("--min_paired_end_reads_overlap " +  '"' + min_paired_end_reads_overlap + '"') else ""} \
      ~{if defined(max_paired_end_reads_overlap) then ("--max_paired_end_reads_overlap " +  '"' + max_paired_end_reads_overlap + '"') else ""} \
      ~{if (hide_mutations_outside_window_nhej) then "--hide_mutations_outside_window_NHEJ" else ""} \
      ~{if defined(window_around_sg_rna) then ("--window_around_sgrna " +  '"' + window_around_sg_rna + '"') else ""} \
      ~{if defined(cleavage_offset) then ("--cleavage_offset " +  '"' + cleavage_offset + '"') else ""} \
      ~{if defined(exclude_bp_from_left) then ("--exclude_bp_from_left " +  '"' + exclude_bp_from_left + '"') else ""} \
      ~{if defined(exclude_bp_from_right) then ("--exclude_bp_from_right " +  '"' + exclude_bp_from_right + '"') else ""} \
      ~{if defined(hdr_perfect_alignment_threshold) then ("--hdr_perfect_alignment_threshold " +  '"' + hdr_perfect_alignment_threshold + '"') else ""} \
      ~{if (ignore_substitutions) then "--ignore_substitutions" else ""} \
      ~{if (ignore_insertions) then "--ignore_insertions" else ""} \
      ~{if (ignore_deletions) then "--ignore_deletions" else ""} \
      ~{if defined(needle_options_string) then ("--needle_options_string " +  '"' + needle_options_string + '"') else ""} \
      ~{if (keep_intermediate) then "--keep_intermediate" else ""} \
      ~{if (dump) then "--dump" else ""} \
      ~{if (save_also_png) then "--save_also_png" else ""} \
      ~{if defined(n_processes) then ("--n_processes " +  '"' + n_processes + '"') else ""} \
      ~{if defined(offset_around_cut_to_plot) then ("--offset_around_cut_to_plot " +  '"' + offset_around_cut_to_plot + '"') else ""} \
      ~{if defined(min_frequency_alleles_around_cut_to_plot) then ("--min_frequency_alleles_around_cut_to_plot " +  '"' + min_frequency_alleles_around_cut_to_plot + '"') else ""} \
      ~{if defined(max_rows_alleles_around_cut_to_plot) then ("--max_rows_alleles_around_cut_to_plot " +  '"' + max_rows_alleles_around_cut_to_plot + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    analysis: "CRISPR/Cas9 outcomes from deep sequencing data-\\n)"
    fast_q_r_one: "First fastq file (default: Fastq filename)"
    fast_q_r_two: "Second fastq file for paired end reads (default: )"
    amplicon_seq: "Amplicon Sequence (default: None)"
    guide_seq: "sgRNA sequence, if more than one, please separate by\\ncomma/s. Note that the sgRNA needs to be input as the\\nguide RNA sequence (usually 20 nt) immediately\\nadjacent to but not including the PAM sequence (5' of\\nNGG for SpCas9). If the PAM is found on the opposite\\nstrand with respect to the Amplicon Sequence, ensure\\nthe sgRNA sequence is also found on the opposite\\nstrand. The CRISPResso convention is to depict the\\nexpected cleavage position using the value of the\\nparameter cleavage_offset nt 3' from the end of the\\nguide. In addition, the use of alternate nucleases to\\nSpCas9 is supported. For example, if using the Cpf1\\nsystem, enter the sequence (usually 20 nt) immediately\\n3' of the PAM sequence and explicitly set the\\ncleavage_offset parameter to 1, since the default\\nsetting of -3 is suitable only for SpCas9. (default: )"
    expected_hdr_amplicon_seq: "Amplicon sequence expected after HDR (default: )"
    donor_seq: "Donor Sequence. This optional input comprises a\\nsubsequence of the expected HDR amplicon to be\\nhighlighted in plots. (default: )"
    coding_seq: "Subsequence/s of the amplicon sequence covering one or\\nmore coding sequences for the frameshift analysis.If\\nmore than one (for example, split by intron/s), please\\nseparate by comma. (default: )"
    min_average_read_quality: "Minimum average quality score (phred33) to keep a read\\n(default: 0)"
    min_single_bp_quality: "Minimum single bp score (phred33) to keep a read\\n(default: 0)"
    min_identity_score: "Minimum identity score for the alignment (default:\\n60.0)"
    name: "Output name (default: )"
    split_paired_end: "Splits a single fastq file contating paired end reads\\nin two files before running CRISPResso (default:\\nFalse)"
    trim_sequences: "Enable the trimming of Illumina adapters with\\nTrimmomatic (default: False)"
    trim_mo_matic_options_string: "Override options for Trimmomatic (default:\\nILLUMINACLIP:/usr/local/lib/python2.7/site-\\npackages/CRISPResso/data/NexteraPE-\\nPE.fa:0:90:10:0:true MINLEN:40)"
    min_paired_end_reads_overlap: "Parameter for the FLASH read merging step. Minimum\\nrequired overlap length between two reads to provide a\\nconfident overlap. (default: 4)"
    max_paired_end_reads_overlap: "Parameter for the FLASH merging step. Maximum overlap\\nlength expected in approximately 90% of read pairs.\\nPlease see the FLASH manual for more information.\\n(default: 100)"
    hide_mutations_outside_window_nhej: "This parameter allows to visualize only the mutations\\noverlapping the cleavage site and used to classify a\\nread as NHEJ. This parameter has no effect on the\\nquanitification of the NHEJ. It may be helpful to mask\\na pre-existing and known mutations or sequencing\\nerrors outside the window used for quantification of\\nNHEJ events. (default: False)"
    window_around_sg_rna: "Window(s) in bp around the cleavage position (half on\\non each side) as determined by the provide guide RNA\\nsequence to quantify the indels. Any indels outside\\nthis window are excluded. A value of 0 disables this\\nfilter. (default: 1)"
    cleavage_offset: "Cleavage offset to use within respect to the 3' end of\\nthe provided sgRNA sequence. Remember that the sgRNA\\nsequence must be entered without the PAM. The default\\nis -3 and is suitable for the SpCas9 system. For\\nalternate nucleases, other cleavage offsets may be\\nappropriate, for example, if using Cpf1 this parameter\\nwould be set to 1. (default: -3)"
    exclude_bp_from_left: "Exclude bp from the left side of the amplicon sequence\\nfor the quantification of the indels (default: 15)"
    exclude_bp_from_right: "Exclude bp from the right side of the amplicon\\nsequence for the quantification of the indels\\n(default: 15)"
    hdr_perfect_alignment_threshold: "Sequence homology % for an HDR occurrence (default:\\n98.0)"
    ignore_substitutions: "Ignore substitutions events for the quantification and\\nvisualization (default: False)"
    ignore_insertions: "Ignore insertions events for the quantification and\\nvisualization (default: False)"
    ignore_deletions: "Ignore deletions events for the quantification and\\nvisualization (default: False)"
    needle_options_string: "Override options for the Needle aligner (default:\\n-gapopen=10 -gapextend=0.5 -awidth3=5000)"
    keep_intermediate: "Keep all the intermediate files (default: False)"
    dump: "Dump numpy arrays and pandas dataframes to file for\\ndebugging purposes (default: False)"
    save_also_png: "Save also .png images additionally to .pdf files\\n(default: False)"
    n_processes: "Specify the number of processes to use for the\\nquantification. Please use with caution since\\nincreasing this parameter will increase significantly\\nthe memory required to run CRISPResso. (default: 1)"
    offset_around_cut_to_plot: "Offset to use to summarize alleles around the cut site\\nin the alleles table plot. (default: 20)"
    min_frequency_alleles_around_cut_to_plot: "Minimum % reads required to report an allele in the\\nalleles table plot. (default: 0.2)"
    max_rows_alleles_around_cut_to_plot: "Maximum number of rows to report in the alleles table\\nplot. (default: 50)"
    debug: "Print stack trace on error. (default: False)"
  }
  output {
    File out_stdout = stdout()
    Directory out_split_paired_end = "${in_split_paired_end}"
  }
}