class: CommandLineTool
id: sniffles_debug.cwl
inputs:
- id: in_mapped_reads
  doc: (required)  Sorted bam File
  type: File?
  inputBinding:
    prefix: --mapped_reads
- id: in_vcf
  doc: VCF output file name []
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_bed_pe
  doc: bedpe output file name []
  type: File?
  inputBinding:
    prefix: --bedpe
- id: in_ivcf
  doc: Input VCF file name. Enable force calling []
  type: File?
  inputBinding:
    prefix: --Ivcf
- id: in_tmp_file
  doc: path to temporary file otherwise Sniffles will use the current directory. []
  type: File?
  inputBinding:
    prefix: --tmp_file
- id: in_min_support
  doc: Minimum number of reads that support a SV. [10]
  type: long?
  inputBinding:
    prefix: --min_support
- id: in_max_num_splits
  doc: Maximum number of splits per read to be still taken into account. [7]
  type: long?
  inputBinding:
    prefix: --max_num_splits
- id: in_max_distance
  doc: Maximum distance to group SV together. [1000]
  type: long?
  inputBinding:
    prefix: --max_distance
- id: in_threads
  doc: Number of threads to use. [3]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_min_length
  doc: Minimum length of SV to be reported. [30]
  type: long?
  inputBinding:
    prefix: --min_length
- id: in_min_mapping_qual
  doc: Minimum Mapping Quality. [20]
  type: long?
  inputBinding:
    prefix: --minmapping_qual
- id: in_num_reads_report
  doc: 'Report up to N reads that support the SV in the vcf file. -1: report all.
    [0]'
  type: long?
  inputBinding:
    prefix: --num_reads_report
- id: in_min_seq_size
  doc: Discard read if non of its segment is larger then this. [2000]
  type: long?
  inputBinding:
    prefix: --min_seq_size
- id: in_min_z_mw
  doc: Discard SV that are not supported by at least x zmws. This applies only for
    PacBio recognizable reads. [0]
  type: long?
  inputBinding:
    prefix: --min_zmw
- id: in_cs_string
  doc: Enables the scan of CS string instead of Cigar and MD.  [false]
  type: boolean?
  inputBinding:
    prefix: --cs_string
- id: in_genotype
  doc: 'Inactivated: Automatically true. [true]'
  type: boolean?
  inputBinding:
    prefix: --genotype
- id: in_cluster
  doc: Enables Sniffles to phase SVs that occur on the same reads [false]
  type: boolean?
  inputBinding:
    prefix: --cluster
- id: in_cluster_support
  doc: Minimum number of reads supporting clustering of SV. [1]
  type: long?
  inputBinding:
    prefix: --cluster_support
- id: in_allele_freq
  doc: Threshold on allele frequency (0-1).  [0]
  type: double?
  inputBinding:
    prefix: --allelefreq
- id: in_min_homo_af
  doc: Threshold on allele frequency (0-1).  [0.8]
  type: double?
  inputBinding:
    prefix: --min_homo_af
- id: in_min_het_af
  doc: Threshold on allele frequency (0-1).  [0.3]
  type: double?
  inputBinding:
    prefix: --min_het_af
- id: in_report_bnd
  doc: Dont report BND instead use Tra in vcf output.  [true]
  type: boolean?
  inputBinding:
    prefix: --report_BND
- id: in_not_report_seq
  doc: Dont report sequences for indels in vcf output. (Beta version!)  [false]
  type: boolean?
  inputBinding:
    prefix: --not_report_seq
- id: in_report_seq
  doc: Inactivated (see not_report_seq). [false]
  type: boolean?
  inputBinding:
    prefix: --report-seq
- id: in_ignore_sd
  doc: Ignores the sd based filtering.  [false]
  type: boolean?
  inputBinding:
    prefix: --ignore_sd
- id: in_ccs_reads
  doc: Preset CCS Pacbio setting. (Beta)  [false]
  type: boolean?
  inputBinding:
    prefix: --ccs_reads
- id: in_report_str
  doc: Enables the report of str. (alpha testing)  [false]
  type: boolean?
  inputBinding:
    prefix: --report_str
- id: in_skip_parameter_estimation
  doc: Enables the scan if only very few reads are present.  [false]
  type: boolean?
  inputBinding:
    prefix: --skip_parameter_estimation
- id: in_del_ratio
  doc: Estimated ration of deletions per read (0-1).  [0.0458369]
  type: double?
  inputBinding:
    prefix: --del_ratio
- id: in_ins_ratio
  doc: Estimated ratio of insertions per read (0-1).  [0.049379]
  type: double?
  inputBinding:
    prefix: --ins_ratio
- id: in_max_diff_per_window
  doc: Maximum differences per 100bp. [50]
  type: long?
  inputBinding:
    prefix: --max_diff_per_window
- id: in_max_dist_aln_events
  doc: "Maximum distance between alignment (indel) events. [4]\n"
  type: long?
  inputBinding:
    prefix: --max_dist_aln_events
- id: in_fritz_dots_ed_la_zeck_at_gmail_dot_com
  doc: 'Input/Output:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_vcf
  doc: VCF output file name []
  type: File?
  outputBinding:
    glob: $(inputs.in_vcf)
- id: out_bed_pe
  doc: bedpe output file name []
  type: File?
  outputBinding:
    glob: $(inputs.in_bed_pe)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sniffles:1.0.12--h8b12597_1
cwlVersion: v1.1
baseCommand:
- sniffles-debug
