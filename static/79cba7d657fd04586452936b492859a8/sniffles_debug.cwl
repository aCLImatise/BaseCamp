class: CommandLineTool
id: sniffles_debug.cwl
inputs:
- id: sniffles
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ivcf
  doc: Input VCF file name. Enable force calling []
  type: string
  inputBinding:
    prefix: --Ivcf
- id: tmp_file
  doc: path to temporary file otherwise Sniffles will use the current directory. []
  type: string
  inputBinding:
    prefix: --tmp_file
- id: cs_string
  doc: Enables the scan of CS string instead of Cigar and MD.  [false]
  type: boolean
  inputBinding:
    prefix: --cs_string
- id: min_homo_af
  doc: Threshold on allele frequency (0-1).  [0.8]
  type: double
  inputBinding:
    prefix: --min_homo_af
- id: min_het_af
  doc: Threshold on allele frequency (0-1).  [0.3]
  type: double
  inputBinding:
    prefix: --min_het_af
- id: report_bnd
  doc: Dont report BND instead use Tra in vcf output.  [true]
  type: boolean
  inputBinding:
    prefix: --report_BND
- id: report_seq
  doc: Report sequences for indels in vcf output. (Beta version!)  [false]
  type: boolean
  inputBinding:
    prefix: --report_seq
- id: ignore_sd
  doc: Ignores the sd based filtering.  [false]
  type: boolean
  inputBinding:
    prefix: --ignore_sd
- id: report_read_strands
  doc: Enables the report of the strand categories per read. (Beta)  [false]
  type: boolean
  inputBinding:
    prefix: --report_read_strands
- id: ccs_reads
  doc: Preset CCS Pacbio setting. (Beta)  [false]
  type: boolean
  inputBinding:
    prefix: --ccs_reads
- id: skip_parameter_estimation
  doc: Enables the scan if only very few reads are present.  [false]
  type: boolean
  inputBinding:
    prefix: --skip_parameter_estimation
- id: del_ratio
  doc: Estimated ration of deletions per read (0-1).  [0.0458369]
  type: double
  inputBinding:
    prefix: --del_ratio
- id: ins_ratio
  doc: Estimated ratio of insertions per read (0-1).  [0.049379]
  type: double
  inputBinding:
    prefix: --ins_ratio
- id: max_diff_per_window
  doc: Maximum differences per 100bp. [50]
  type: long
  inputBinding:
    prefix: --max_diff_per_window
- id: max_dist_aln_events
  doc: Maximum distance between alignment (indel) events. [4]
  type: long
  inputBinding:
    prefix: --max_dist_aln_events
outputs: []
cwlVersion: v1.1
baseCommand:
- sniffles-debug
