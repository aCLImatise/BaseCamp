class: CommandLineTool
id: bcftools_gtcheck.cwl
inputs:
- id: in_distinctive_sites
  doc: "Find sites that can distinguish between at least NUM sample pairs.\nNUM[,MEM[,TMP]]\
    \          If the number is smaller or equal to 1, it is interpreted as the fraction\
    \ of pairs.\nThe optional MEM string sets the maximum memory used for in-memory\
    \ sorting [500M]\nand TMP is a prefix of temporary files used by external sorting\
    \ [/tmp/bcftools-gtcheck]"
  type: boolean?
  inputBinding:
    prefix: --distinctive-sites
- id: in_dry_run
  doc: Stop after first record to estimate required time
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_error_probability
  doc: Phred-scaled probability of genotyping error, 0 for faster but less accurate
    results [40]
  type: long?
  inputBinding:
    prefix: --error-probability
- id: in_genotypes
  doc: Genotypes to compare against
  type: File?
  inputBinding:
    prefix: --genotypes
- id: in_homs_only
  doc: Homozygous genotypes only, useful with low coverage data (requires -g)
  type: boolean?
  inputBinding:
    prefix: --homs-only
- id: in_n_matches
  doc: "Print only top INT matches for each sample (sorted by average score), 0 for\
    \ unlimited.\nUse negative value to sort by HWE probability rather than by discordance\
    \ [0]"
  type: long?
  inputBinding:
    prefix: --n-matches
- id: in_no_h_we_prob
  doc: Disable calculation of HWE probability
  type: boolean?
  inputBinding:
    prefix: --no-HWE-prob
- id: in_pairs
  doc: Comma-separated sample pairs to compare (qry,gt[,qry,gt..] with -g or qry,qry[,qry,qry..]
    w/o)
  type: string?
  inputBinding:
    prefix: --pairs
- id: in_pairs_file
  doc: File with tab-delimited sample pairs to compare (qry,gt with -g or qry,qry
    w/o)
  type: File?
  inputBinding:
    prefix: --pairs-file
- id: in_regions
  doc: Restrict to comma-separated list of regions
  type: string?
  inputBinding:
    prefix: --regions
- id: in_regions_file
  doc: Restrict to regions listed in a file
  type: File?
  inputBinding:
    prefix: --regions-file
- id: in_samples
  doc: '[qry|gt]:LIST        List of query or -g samples, "-" to select all samples
    (by default all samples are compared)'
  type: boolean?
  inputBinding:
    prefix: --samples
- id: in_samples_file
  doc: '[qry|gt]:FILE   File with the query or -g samples to compare'
  type: boolean?
  inputBinding:
    prefix: --samples-file
- id: in_targets
  doc: Similar to -r but streams rather than index-jumps
  type: string?
  inputBinding:
    prefix: --targets
- id: in_targets_file
  doc: Similar to -R but streams rather than index-jumps
  type: File?
  inputBinding:
    prefix: --targets-file
- id: in_use
  doc: Which tag to use in the query file (TAG1) and the -g file (TAG2) [PL,GT]
  type: long?
  inputBinding:
    prefix: --use
- id: in_query_dot_vcf_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bcftools:1.12--h3f113a9_0
cwlVersion: v1.1
baseCommand:
- bcftools
- gtcheck
