version 1.0

task CRISPRessoWGS {
  input {
    Int? analysis
    File? bam_file
    File? region_file
    File? reference_file
    Int? min_reads_to_use_region
    File? gene_annotations
    Int? min_average_read_quality
    Int? min_single_bp_quality
    Int? min_identity_score
    String? name
    Directory? trim_sequences
    Float? trim_mo_matic_options_string
    Int? min_paired_end_reads_overlap
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
  }
  command <<<
    CRISPRessoWGS \
      ~{if defined(analysis) then ("-Analysis " +  '"' + analysis + '"') else ""} \
      ~{if defined(bam_file) then ("--bam_file " +  '"' + bam_file + '"') else ""} \
      ~{if defined(region_file) then ("--region_file " +  '"' + region_file + '"') else ""} \
      ~{if defined(reference_file) then ("--reference_file " +  '"' + reference_file + '"') else ""} \
      ~{if defined(min_reads_to_use_region) then ("--min_reads_to_use_region " +  '"' + min_reads_to_use_region + '"') else ""} \
      ~{if defined(gene_annotations) then ("--gene_annotations " +  '"' + gene_annotations + '"') else ""} \
      ~{if defined(min_average_read_quality) then ("--min_average_read_quality " +  '"' + min_average_read_quality + '"') else ""} \
      ~{if defined(min_single_bp_quality) then ("--min_single_bp_quality " +  '"' + min_single_bp_quality + '"') else ""} \
      ~{if defined(min_identity_score) then ("--min_identity_score " +  '"' + min_identity_score + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(trim_sequences) then ("--trim_sequences " +  '"' + trim_sequences + '"') else ""} \
      ~{if defined(trim_mo_matic_options_string) then ("--trimmomatic_options_string " +  '"' + trim_mo_matic_options_string + '"') else ""} \
      ~{if defined(min_paired_end_reads_overlap) then ("--min_paired_end_reads_overlap " +  '"' + min_paired_end_reads_overlap + '"') else ""} \
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
      ~{if defined(n_processes) then ("--n_processes " +  '"' + n_processes + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    analysis: "CRISPR/Cas9 outcomes from WGS data-\\n)                                 )"
    bam_file: "WGS aligned bam file (default: bam filename)"
    region_file: "Regions description file. A BED format file containing\\nthe regions to analyze, one per line. The REQUIRED\\ncolumns are: chr_id(chromosome name), bpstart(start\\nposition), bpend(end position), the optional columns\\nare:name (an unique indentifier for the region),\\nguide_seq, expected_hdr_amplicon_seq,coding_seq, see\\nCRISPResso help for more details on these last 3\\nparameters) (default: )"
    reference_file: "A FASTA format reference file (for example hg19.fa for\\nthe human genome) (default: )"
    min_reads_to_use_region: "Minimum number of reads that align to a region to\\nperform the CRISPResso analysis (default: 10)"
    gene_annotations: "Gene Annotation Table from UCSC Genome Browser Tables\\n(http://genome.ucsc.edu/cgi-\\nbin/hgTables?command=start), please select as table\\n\\\"knowGene\\\", as output format \\\"all fields from selected\\ntable\\\" and as file returned \\\"gzip compressed\\\"\\n(default: )"
    min_average_read_quality: "Minimum average quality score (phred33) to keep a read\\n(default: 0)"
    min_single_bp_quality: "Minimum single bp score (phred33) to keep a read\\n(default: 0)"
    min_identity_score: "Min identity score for the alignment (default: 60.0)"
    name: "Output name (default: )"
    trim_sequences: "Enable the trimming of Illumina adapters with\\nTrimmomatic (default: False)"
    trim_mo_matic_options_string: "Override options for Trimmomatic (default:\\nILLUMINACLIP:/usr/local/lib/python2.7/site-\\npackages/CRISPResso/data/NexteraPE-\\nPE.fa:0:90:10:0:true MINLEN:40)"
    min_paired_end_reads_overlap: "Minimum required overlap length between two reads to\\nprovide a confident overlap. (default: 4)"
    hide_mutations_outside_window_nhej: "This parameter allows to visualize only the mutations\\noverlapping the cleavage site and used to classify a\\nread as NHEJ. This parameter has no effect on the\\nquanitification of the NHEJ. It may be helpful to mask\\na pre-existing and known mutations or sequencing\\nerrors outside the window used for quantification of\\nNHEJ events. (default: False)"
    window_around_sg_rna: "Window(s) in bp around the cleavage position (half on\\non each side) as determined by the provide guide RNA\\nsequence to quantify the indels. Any indels outside\\nthis window are excluded. A value of 0 disables this\\nfilter. (default: 1)"
    cleavage_offset: "Cleavage offset to use within respect to the 3' end of\\nthe provided sgRNA sequence. Remember that the sgRNA\\nsequence must be entered without the PAM. The default\\nis -3 and is suitable for the SpCas9 system. For\\nalternate nucleases, other cleavage offsets may be\\nappropriate, for example, if using Cpf1 this parameter\\nwould be set to 1. (default: -3)"
    exclude_bp_from_left: "Exclude bp from the left side of the amplicon sequence\\nfor the quantification of the indels (default: 5)"
    exclude_bp_from_right: "Exclude bp from the right side of the amplicon\\nsequence for the quantification of the indels\\n(default: 5)"
    hdr_perfect_alignment_threshold: "Sequence homology % for an HDR occurrence (default:\\n98.0)"
    ignore_substitutions: "Ignore substitutions events for the quantification and\\nvisualization (default: False)"
    ignore_insertions: "Ignore insertions events for the quantification and\\nvisualization (default: False)"
    ignore_deletions: "Ignore deletions events for the quantification and\\nvisualization (default: False)"
    needle_options_string: "Override options for the Needle aligner (default:\\n-gapopen=10 -gapextend=0.5 -awidth3=5000)"
    keep_intermediate: "Keep all the intermediate files (default: False)"
    dump: "Dump numpy arrays and pandas dataframes to file for\\ndebugging purposes (default: False)"
    save_also_png: "Save also .png images additionally to .pdf files\\n(default: False)"
    n_processes: "Specify the number of processes to use for the\\nquantification. Please use with caution since\\nincreasing this parameter will increase significantly\\nthe memory required to run CRISPResso. (default: 1)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_gene_annotations = "${in_gene_annotations}"
    Directory out_trim_sequences = "${in_trim_sequences}"
  }
}