version 1.0

task CRISPRessoPooled {
  input {
    Int? analysis
    Int? fast_q_r_one
    Int? fast_q_r_two
    File? amplicons_file
    Int? bowtie_two_index
    File? gene_annotations
    Int? n_processes
    Int? bowtie_two_options_string
    Int? min_reads_to_use_region
    Int? min_average_read_quality
    Int? min_single_bp_quality
    Int? min_identity_score
    String? name
    Directory? trim_sequences
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
  }
  command <<<
    CRISPRessoPooled \
      ~{if defined(analysis) then ("-Analysis " +  '"' + analysis + '"') else ""} \
      ~{if defined(fast_q_r_one) then ("--fastq_r1 " +  '"' + fast_q_r_one + '"') else ""} \
      ~{if defined(fast_q_r_two) then ("--fastq_r2 " +  '"' + fast_q_r_two + '"') else ""} \
      ~{if defined(amplicons_file) then ("--amplicons_file " +  '"' + amplicons_file + '"') else ""} \
      ~{if defined(bowtie_two_index) then ("--bowtie2_index " +  '"' + bowtie_two_index + '"') else ""} \
      ~{if defined(gene_annotations) then ("--gene_annotations " +  '"' + gene_annotations + '"') else ""} \
      ~{if defined(n_processes) then ("--n_processes " +  '"' + n_processes + '"') else ""} \
      ~{if defined(bowtie_two_options_string) then ("--bowtie2_options_string " +  '"' + bowtie_two_options_string + '"') else ""} \
      ~{if defined(min_reads_to_use_region) then ("--min_reads_to_use_region " +  '"' + min_reads_to_use_region + '"') else ""} \
      ~{if defined(min_average_read_quality) then ("--min_average_read_quality " +  '"' + min_average_read_quality + '"') else ""} \
      ~{if defined(min_single_bp_quality) then ("--min_single_bp_quality " +  '"' + min_single_bp_quality + '"') else ""} \
      ~{if defined(min_identity_score) then ("--min_identity_score " +  '"' + min_identity_score + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(trim_sequences) then ("--trim_sequences " +  '"' + trim_sequences + '"') else ""} \
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
      ~{if (save_also_png) then "--save_also_png" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    analysis: "CRISPR/Cas9 outcomes from POOLED deep sequencing data-\\n)                                            )"
    fast_q_r_one: "First fastq file (default: Fastq filename)"
    fast_q_r_two: "Second fastq file for paired end reads (default: )"
    amplicons_file: "Amplicons description file. In particular, this file,\\nis a tab delimited text file with up to 5 columns (2\\nrequired): AMPLICON_NAME: an identifier for the\\namplicon (must be unique) AMPLICON_SEQUENCE: amplicon\\nsequence used in the design of the experiment\\nsgRNA_SEQUENCE (OPTIONAL): sgRNA sequence used for\\nthis amplicon without the PAM sequence. If more than\\none separate them by commas and not spaces. If not\\navailable enter NA. EXPECTED_AMPLICON_AFTER_HDR\\n(OPTIONAL): expected amplicon sequence in case of HDR.\\nIf not available enter NA. CODING_SEQUENCE (OPTIONAL):\\nSubsequence(s) of the amplicon corresponding to coding\\nsequences. If more than one separate them by commas\\nand not spaces. If not available enter NA. (default: )"
    bowtie_two_index: "Basename of Bowtie2 index for the reference genome\\n(default: )"
    gene_annotations: "Gene Annotation Table from UCSC Genome Browser Tables\\n(http://genome.ucsc.edu/cgi-\\nbin/hgTables?command=start), please select as table\\n\\\"knowGene\\\", as output format \\\"all fields from selected\\ntable\\\" and as file returned \\\"gzip compressed\\\"\\n(default: )"
    n_processes: "Specify the number of processes to use for the\\nquantification. Please use with caution since\\nincreasing this parameter will increase significantly\\nthe memory required to run CRISPResso. (default: 1)"
    bowtie_two_options_string: "Override options for the Bowtie2 alignment command\\n(default: -k 1 --end-to-end -N 0 --np 0 )"
    min_reads_to_use_region: "Minimum number of reads that align to a region to\\nperform the CRISPResso analysis (default: 1000)"
    min_average_read_quality: "Minimum average quality score (phred33) to keep a read\\n(default: 0)"
    min_single_bp_quality: "Minimum single bp score (phred33) to keep a read\\n(default: 0)"
    min_identity_score: "Min identity score for the alignment (default: 60.0)"
    name: "Output name (default: )"
    trim_sequences: "Enable the trimming of Illumina adapters with\\nTrimmomatic (default: False)"
    trim_mo_matic_options_string: "Override options for Trimmomatic (default:\\nILLUMINACLIP:/usr/local/lib/python2.7/site-\\npackages/CRISPResso/data/NexteraPE-\\nPE.fa:0:90:10:0:true MINLEN:40)"
    min_paired_end_reads_overlap: "Minimum required overlap length between two reads to\\nprovide a confident overlap. (default: 4)"
    max_paired_end_reads_overlap: "parameter for the flash merging step, this parameter\\nis the maximum overlap length expected in\\napproximately 90% of read pairs. Please see the flash\\nmanual for more information. (default: 100)"
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
    save_also_png: "Save also .png images additionally to .pdf files\\n(default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_gene_annotations = "${in_gene_annotations}"
    Directory out_trim_sequences = "${in_trim_sequences}"
  }
}