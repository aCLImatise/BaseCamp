version 1.0

task ErneMeth {
  input {
    String? fast_a
    String? bamsam_file_generated
    String? output_prefix
    Boolean? annotations_erne
    Boolean? annotations_bismark
    Boolean? annotations_epp
    String? compress
    Boolean? write_bam
    String? target
    String? extend_target
    Boolean? on_target_annotations
    Boolean? print_only_covered
    Boolean? single_mode
    Boolean? multiple_mode
    Boolean? disambiguation_mode
    String? use_first
    Boolean? de_duplicate
    String? allowed_duplicates
    Boolean? disable_un_proper_pair
    String? max_coverage
    String? coverage_threshold
    String? error_threshold
    String? delta_m
    String? min_c_cov
    String? max_c_cov
    String? aligned_reads_thr
    String? contamination_reference
  }
  command <<<
    erne-meth \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(bamsam_file_generated) then ("--input " +  '"' + bamsam_file_generated + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{true="--annotations-erne" false="" annotations_erne} \
      ~{true="--annotations-bismark" false="" annotations_bismark} \
      ~{true="--annotations-epp" false="" annotations_epp} \
      ~{if defined(compress) then ("--compress " +  '"' + compress + '"') else ""} \
      ~{true="--write-bam" false="" write_bam} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(extend_target) then ("--extend-target " +  '"' + extend_target + '"') else ""} \
      ~{true="--on-target-annotations" false="" on_target_annotations} \
      ~{true="--print-only-covered" false="" print_only_covered} \
      ~{true="--single-mode" false="" single_mode} \
      ~{true="--multiple-mode" false="" multiple_mode} \
      ~{true="--disambiguation-mode" false="" disambiguation_mode} \
      ~{if defined(use_first) then ("--use-first " +  '"' + use_first + '"') else ""} \
      ~{true="--deduplicate" false="" de_duplicate} \
      ~{if defined(allowed_duplicates) then ("--allowed-duplicates " +  '"' + allowed_duplicates + '"') else ""} \
      ~{true="--disable-unproper-pair" false="" disable_un_proper_pair} \
      ~{if defined(max_coverage) then ("--max-coverage " +  '"' + max_coverage + '"') else ""} \
      ~{if defined(coverage_threshold) then ("--coverage-threshold " +  '"' + coverage_threshold + '"') else ""} \
      ~{if defined(error_threshold) then ("--error-threshold " +  '"' + error_threshold + '"') else ""} \
      ~{if defined(delta_m) then ("--delta-m " +  '"' + delta_m + '"') else ""} \
      ~{if defined(min_c_cov) then ("--min-C-cov " +  '"' + min_c_cov + '"') else ""} \
      ~{if defined(max_c_cov) then ("--max-C-cov " +  '"' + max_c_cov + '"') else ""} \
      ~{if defined(aligned_reads_thr) then ("--aligned-reads-thr " +  '"' + aligned_reads_thr + '"') else ""} \
      ~{if defined(contamination_reference) then ("--contamination-reference " +  '"' + contamination_reference + '"') else ""}
  >>>
  parameter_meta {
    fast_a: "reference fasta file (can be repeated several  time). [REQUIRED]"
    bamsam_file_generated: "BAM/SAM file generated with erne-bs5 [REQUIRED]"
    output_prefix: "prefix for output files (methylation analysis,  reports). [REQUIRED]"
    annotations_erne: "Generate methylation annotations in erne  format. Format is: <chr> <position> <strand>  <context> <#C+#T> <methyl_level> <mult_reads>,  where methyl_level = #C/(#C+#T) (or NA if  #C+#T=0) and mult_reads is the number of  multiple reads disambiguated that cover the  position (only if --disambiguation-mode is  specified, NA otherwise). Coordinates are  1-based. Default: disabled."
    annotations_bismark: "Generate methylation annotations in bismark  cytosine format. Format is: <chr> <position>  <strand> <#C> <#T> <context> <detailed  context>, where <position> for - strand (Gs on  + strand) is computed as position of the  corresponding G on + strand minus context  length plus one (context length = 2 for CG and  3 for CHG/CHH). Context is one of CG/CHG/CHH,  while detailed context is the exact 3 bases of  the context. Coordinates are 1-based. Default:  disabled."
    annotations_epp: "Generate methylation annotations in the format  as output files from the Epigenome Processing  Pipeline (EPP) applied at the Broad Institute.  Format is (tab separated): <chr name> <start  context(included)> <end context(excluded)>  <methylation value and coverage as a string (  '#C/(#T+#C)', '0/0' if not covered )>  <methylation in range [0,1000]> <strand>  <context(CG/CHG/CHH)>. Coordinates are 0-based. Default: disabled."
    compress: "Compress methylation annotations in the  specified format (example: --compress bz).  Default: do not compress."
    write_bam: "write used alignments in a bam file. The bam  file is called 'output_prefix_alignments_used.b am', where output_prefix is the prefix  specified with --output-prefix."
    target: "input bed file with targeted regions in the  format chr start_pos(included)  end_pos(excluded). If specified, ERNE-METH will produce also target statistics and three output files with extension _on_target.txt,  _off_target.txt and _out_target_cov_distributio n.txt containing informations about % of  covered bases on target having a given minimum  coverage, number of covered bases off target  having a given minimum coverage, and a list of  triples <distance_from_target, coverage,  number_of_positions> respectively. Here,  distance_from_target is the distance from the  nearest target region, coverage is the coverage of that position and number_of_positions is the number of positions having that coverage and  distance_from_target."
    extend_target: "Extend boundaries of the targeted regions by  arg positions (on both sides). Useful to take  into account tails of aligned reads at the  extremities of targeted regions while computing statistics. Default: 0."
    on_target_annotations: "In the annotations file print only on-target  positions (included extended positions, see  --extend-target). Default: false (print all  positions)."
    print_only_covered: "In the annotations file print only covered  positions. Default: false (print all  cytosines)."
    single_mode: "Modality 1: Use only single-mapping reads. This modality is incompatible with --multiple-mode.  Default: enabled."
    multiple_mode: "Modality 2: With paired end, if one mate is  single and the other multiple, use the primary  alignment for the multiple-mapping read.  Default: disabled"
    disambiguation_mode: "Modality 3: Use methylation information to  disambiguate multiple-mapping reads. WARNING:  can be used only on bam files produced with the option --print-all and single-end reads.  Default: disabled."
    use_first: "Use only the first arg alignments (or pairs if  paired-end) in the input file. If set to 0, use all alignments. Default: 0."
    de_duplicate: "Automatically remove PCR duplicates while  calling methylation. An alignment is considered duplicate if another alignment with same  chromosome, starting position and orientation  has already been processed. Given a set of  duplicates, only the first N appearing in the  input file will be used for the methylation  call, where N is specified with the option  --allowed-duplicates. For paired-end reads, a  pair is considered duplicate if and only if  another pair with same chromosome, starting  position and orientation (for both reads) has  been aligned before. Default: false. "
    allowed_duplicates: "If --deduplicate is specified, keep the first  arg duplicate alignments for a read/pair (in  the order seen in the bam file). Default: 1."
    disable_un_proper_pair: "With paired end reads, discard unproper pairs  (alignments on different strand/chromosome).  Unproper pairs could reflect structural  variations. Default: disabled (accept unproper  pairs). "
    max_coverage: "Do not increment Cytosine coverage counters if  coverage of a Cytosine is > arg. Can be used to normalize read depth across multiple samples.  Default: 2^16-1."
    coverage_threshold: "If the coverage of a cytosine in the reference  is < arg then it is considered as not covered.  Default: 1."
    error_threshold: "(only with --disambiguation-mode) use an  alignment for the methylation pattern extension only if its average methylation distance per  cytosine is less or equal this value in %.  Default: 100."
    delta_m: "(only with --disambiguation-mode) During  disambiguation phase if there are multiple  alignments for a read then extend the  methylation profile with the best one ONLY if  its methylation distance is at least by arg  smaller than the second best one. High values  guarantee higher reliability. Default: 0."
    min_c_cov: "(only with --disambiguation-mode) Lower bound  for the minimum number of cytosines in an  alignment that must be covered by the  methylation pattern to process the alignment.  When C_cov reaches this value, the algorithm is terminated. Default: 10."
    max_c_cov: "(only with --disambiguation-mode) Upper bound  for the minimum number of cytosines in an  alignment that must be covered by the  methylation pattern to process the alignment.  This is the starting value for C_cov. Default:  20."
    aligned_reads_thr: "(only with --disambiguation-mode) If during a  cycle less or equal than arg reads have been  disambiguated then decrement C_cov. Default: 10"
    contamination_reference: "reference file to use for contamination check  (in ERNE format)"
  }
}