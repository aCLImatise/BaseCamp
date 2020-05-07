class: CommandLineTool
id: methylpy_call_methylation_state.cwl
inputs:
- id: input_file
  doc: 'bam file that contains mapped bisulfite sequencing reads. (default: None)'
  type: string
  inputBinding:
    prefix: --input-file
- id: sample
  doc: 'String indicating the name of the sample you are processing. It will be included
    in the output files. (default: None)'
  type: string
  inputBinding:
    prefix: --sample
- id: ref_fast_a
  doc: 'string indicating the path to a fasta file containing the sequences you used
    for mapping (default: None)'
  type: string
  inputBinding:
    prefix: --ref-fasta
- id: paired_end
  doc: 'Boolean indicating whether the input BAM file is from paired-end data. (default:
    False)'
  type: string
  inputBinding:
    prefix: --paired-end
- id: path_to_output
  doc: 'Path to a directory where you would like the output to be stored. The default
    is the same directory as the input fastqs. (default: )'
  type: File
  inputBinding:
    prefix: --path-to-output
- id: num_procs
  doc: 'Number of processors you wish to use to parallelize this function (default:
    1)'
  type: string
  inputBinding:
    prefix: --num-procs
- id: num_upstream_bases
  doc: 'Number of base(s) upstream of each cytosine that you wish to include in output
    file. Recommend value 1 for NOMe-seq processing since the upstream base is required
    to tell apart cytosine at GC context. (default: 0)'
  type: string
  inputBinding:
    prefix: --num-upstream-bases
- id: num_downstream_bases
  doc: 'Number of base(s) downstream of each cytosine that you wish to include in
    output file. Recommend value to be at least 1 to separate cytosines at different
    sequence contexts. (default: 2)'
  type: string
  inputBinding:
    prefix: --num-downstream-bases
- id: generate_all_c_file
  doc: 'Boolean indicating whether to generate the final output file that contains
    the methylation state of each cytosine. If set to be false, only alignment file
    (in BAM format) will be generated. (default: True)'
  type: string
  inputBinding:
    prefix: --generate-allc-file
- id: generate_m_pile_up_file
  doc: 'Boolean indicating whether to generate intermediate mpileup file to save space.
    However, skipping mpileup step may cause problem due to the nature of python.
    Not skipping this step is recommended. (default: True)'
  type: string
  inputBinding:
    prefix: --generate-mpileup-file
- id: compress_output
  doc: 'Boolean indicating whether to compress (by gzip) the final output (allc file(s)).
    (default: True)'
  type: string
  inputBinding:
    prefix: --compress-output
- id: b_gzip
  doc: 'Boolean indicating whether to bgzip compressed allc files and tabix index.
    (default: False)'
  type: string
  inputBinding:
    prefix: --bgzip
- id: path_to_b_gzip
  doc: 'Path to bgzip installation (default: )'
  type: File
  inputBinding:
    prefix: --path-to-bgzip
- id: path_to_tab_ix
  doc: 'Path to tabix installation (default: )'
  type: File
  inputBinding:
    prefix: --path-to-tabix
- id: path_to_sam_tools
  doc: 'Path to samtools installation (default: )'
  type: File
  inputBinding:
    prefix: --path-to-samtools
- id: remove_chr_prefix
  doc: 'Boolean indicates whether to remove in the final output the "chr" prefix in
    the chromosome name (default: True)'
  type: string
  inputBinding:
    prefix: --remove-chr-prefix
- id: add_snp_info
  doc: 'Boolean indicates whether to add extra two columns in the output (allc) file
    regarding the genotype information of each site. The first (second) column contain
    the number of basecalls that support the reference gentype (variant) for nucleotides
    in the sequence context. (default: False)'
  type: string
  inputBinding:
    prefix: --add-snp-info
- id: unmethylated_control
  doc: 'name of the chromosome/region that you want to use to estimate the non-conversion
    rate of your sample, or the non-conversion rate you would like to use. Consequently,
    control is either a string, or a decimal. If control is a string then it should
    be in the following format: "chrom:start-end". If you would like to specify an
    entire chromosome simply use "chrom:" (default: None)'
  type: string
  inputBinding:
    prefix: --unmethylated-control
- id: bin_om_test
  doc: 'Indicates that you would like to perform a binomial test on each cytosine
    to delineate cytosines that are significantly methylated than noise due to the
    failure of bisulfite conversion. (default: False)'
  type: string
  inputBinding:
    prefix: --binom-test
- id: sig_cut_off
  doc: 'float indicating the adjusted p-value cutoff you wish to use for determining
    whether or not a site is methylated (default: 0.01)'
  type: string
  inputBinding:
    prefix: --sig-cutoff
- id: min_mapq
  doc: 'Minimum MAPQ for reads to be included. (default: 30)'
  type: long
  inputBinding:
    prefix: --min-mapq
- id: min_cov
  doc: 'Integer indicating the minimum number of reads for a site to be tested. (default:
    0)'
  type: long
  inputBinding:
    prefix: --min-cov
- id: min_base_quality
  doc: 'Integer indicating the minimum PHRED quality score for a base to be included
    in the mpileup file (and subsequently to be considered for methylation calling).
    (default: 1)'
  type: long
  inputBinding:
    prefix: --min-base-quality
- id: keep_temp_files
  doc: 'Boolean indicating that you would like to keep the intermediate files generated
    by this function. This can be useful for debugging, but in general should be left
    False. (default: False)'
  type: string
  inputBinding:
    prefix: --keep-temp-files
outputs: []
cwlVersion: v1.1
baseCommand:
- methylpy
- call-methylation-state
