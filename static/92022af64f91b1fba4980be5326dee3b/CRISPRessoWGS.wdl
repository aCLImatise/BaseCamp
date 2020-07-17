version 1.0

task CRISPRessoWGS {
  input {
    Boolean? trim_sequences
    String? trim_mo_matic_options_string
    Int? min_paired_end_reads_overlap
    Boolean? hide_mutations_outside_window_nhej
    String? window_around_sg_rna
    String? cleavage_offset
    String? exclude_bp_from_left
    String? exclude_bp_from_right
    String? hdr_perfect_alignment_threshold
    Boolean? ignore_substitutions
    Boolean? ignore_insertions
    Boolean? ignore_deletions
    String? needle_options_string
    Boolean? keep_intermediate
    Boolean? dump
    Boolean? save_also_png
    String? n_processes
    String? b
    String? f
    String? r
  }
  command <<<
    CRISPRessoWGS \
      ~{true="--trim_sequences" false="" trim_sequences} \
      ~{if defined(trim_mo_matic_options_string) then ("--trimmomatic_options_string " +  '"' + trim_mo_matic_options_string + '"') else ""} \
      ~{if defined(min_paired_end_reads_overlap) then ("--min_paired_end_reads_overlap " +  '"' + min_paired_end_reads_overlap + '"') else ""} \
      ~{true="--hide_mutations_outside_window_NHEJ" false="" hide_mutations_outside_window_nhej} \
      ~{if defined(window_around_sg_rna) then ("--window_around_sgrna " +  '"' + window_around_sg_rna + '"') else ""} \
      ~{if defined(cleavage_offset) then ("--cleavage_offset " +  '"' + cleavage_offset + '"') else ""} \
      ~{if defined(exclude_bp_from_left) then ("--exclude_bp_from_left " +  '"' + exclude_bp_from_left + '"') else ""} \
      ~{if defined(exclude_bp_from_right) then ("--exclude_bp_from_right " +  '"' + exclude_bp_from_right + '"') else ""} \
      ~{if defined(hdr_perfect_alignment_threshold) then ("--hdr_perfect_alignment_threshold " +  '"' + hdr_perfect_alignment_threshold + '"') else ""} \
      ~{true="--ignore_substitutions" false="" ignore_substitutions} \
      ~{true="--ignore_insertions" false="" ignore_insertions} \
      ~{true="--ignore_deletions" false="" ignore_deletions} \
      ~{if defined(needle_options_string) then ("--needle_options_string " +  '"' + needle_options_string + '"') else ""} \
      ~{true="--keep_intermediate" false="" keep_intermediate} \
      ~{true="--dump" false="" dump} \
      ~{true="--save_also_png" false="" save_also_png} \
      ~{if defined(n_processes) then ("--n_processes " +  '"' + n_processes + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    trim_sequences: "Enable the trimming of Illumina adapters with Trimmomatic (default: False)"
    trim_mo_matic_options_string: "Override options for Trimmomatic (default: ILLUMINACLIP:/tmp/tmplwqo0wwj/lib/python2.7/site- packages/CRISPResso/data/NexteraPE- PE.fa:0:90:10:0:true MINLEN:40)"
    min_paired_end_reads_overlap: "Minimum required overlap length between two reads to provide a confident overlap. (default: 4)"
    hide_mutations_outside_window_nhej: "This parameter allows to visualize only the mutations overlapping the cleavage site and used to classify a read as NHEJ. This parameter has no effect on the quanitification of the NHEJ. It may be helpful to mask a pre-existing and known mutations or sequencing errors outside the window used for quantification of NHEJ events. (default: False)"
    window_around_sg_rna: "Window(s) in bp around the cleavage position (half on on each side) as determined by the provide guide RNA sequence to quantify the indels. Any indels outside this window are excluded. A value of 0 disables this filter. (default: 1)"
    cleavage_offset: "Cleavage offset to use within respect to the 3' end of the provided sgRNA sequence. Remember that the sgRNA sequence must be entered without the PAM. The default is -3 and is suitable for the SpCas9 system. For alternate nucleases, other cleavage offsets may be appropriate, for example, if using Cpf1 this parameter would be set to 1. (default: -3)"
    exclude_bp_from_left: "Exclude bp from the left side of the amplicon sequence for the quantification of the indels (default: 5)"
    exclude_bp_from_right: "Exclude bp from the right side of the amplicon sequence for the quantification of the indels (default: 5)"
    hdr_perfect_alignment_threshold: "Sequence homology % for an HDR occurrence (default: 98.0)"
    ignore_substitutions: "Ignore substitutions events for the quantification and visualization (default: False)"
    ignore_insertions: "Ignore insertions events for the quantification and visualization (default: False)"
    ignore_deletions: "Ignore deletions events for the quantification and visualization (default: False)"
    needle_options_string: "Override options for the Needle aligner (default: -gapopen=10 -gapextend=0.5 -awidth3=5000)"
    keep_intermediate: "Keep all the intermediate files (default: False)"
    dump: "Dump numpy arrays and pandas dataframes to file for debugging purposes (default: False)"
    save_also_png: "Save also .png images additionally to .pdf files (default: False)"
    n_processes: "Specify the number of processes to use for the quantification. Please use with caution since increasing this parameter will increase significantly the memory required to run CRISPResso. (default: 1)"
    b: ""
    f: ""
    r: ""
  }
}