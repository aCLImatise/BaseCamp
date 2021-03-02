class: CommandLineTool
id: unfazed.cwl
inputs:
- id: in_dn_ms
  doc: "valid VCF OR BED file of the DNMs of interest> If BED,\nmust contain chrom,\
    \ start, end, kid_id, var_type\ncolumns (default: None)"
  type: File?
  inputBinding:
    prefix: --dnms
- id: in_sites
  doc: "sorted/bgzipped/indexed VCF/BCF file of SNVs to\nidentify informative sites.\
    \ Must contain each kid and\nboth parents (default: None)"
  type: File?
  inputBinding:
    prefix: --sites
- id: in_ped
  doc: "ped file including the kid and both parent IDs\n(default: None)"
  type: File?
  inputBinding:
    prefix: --ped
- id: in_bam_dir
  doc: "directory where bam/cram files (named {sample_id}.bam\nor {sample_id}.cram)\
    \ are stored for offspring. If not\nincluded, --bam-pairs must be set (default:\
    \ None)"
  type: Directory?
  inputBinding:
    prefix: --bam-dir
- id: in_bam_pairs
  doc: "[BAM_PAIRS [BAM_PAIRS ...]]\nspace-delimited list of pairs in the format\n\
    {sample_id}:{bam_path} where {sample_id} matches an\noffspring id from the dnm\
    \ file. Can be used with\n--bam-dir arg, must be used in its absence (default:\n\
    None)"
  type: boolean?
  inputBinding:
    prefix: --bam-pairs
- id: in_threads
  doc: 'number of threads to use (default: 2)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_output_type
  doc: "choose output type. If --dnms is not a VCF/BCF, output\nmust be to BED format.\
    \ Defaults to match --dnms input\nfile (default: None)"
  type: string?
  inputBinding:
    prefix: --output-type
- id: in_include_ambiguous
  doc: 'include ambiguous phasing results (default: False)'
  type: boolean?
  inputBinding:
    prefix: --include-ambiguous
- id: in_verbose
  doc: "print verbose output including sites and reads used\nfor phasing. Only applies\
    \ to BED output (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_outfile
  doc: "name for output file. Defaults to stdout (default:\n/dev/stdout)"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_reference
  doc: "reference fasta file (required for crams) (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --reference
- id: in_build
  doc: "human genome build, used to determine sex chromosome\npseudoautosomal regions.\
    \ If `na` option is chosen, sex\nchromosomes will not be auto-phased. HG19/GRCh37\n\
    interchangeable (default: None)"
  type: string?
  inputBinding:
    prefix: --build
- id: in_no_extended
  doc: "do not perform extended read-based phasing (default\nTrue) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-extended
- id: in_multi_read_proc_min
  doc: "min number of variants required to perform multiple\nparallel reads of the\
    \ sites file (default: 1000)"
  type: long?
  inputBinding:
    prefix: --multiread-proc-min
- id: in_quiet
  doc: 'no logging of variant processing data (default: False)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_min_gt_qual
  doc: "min genotype and base quality for informative sites\n(default: 20)"
  type: long?
  inputBinding:
    prefix: --min-gt-qual
- id: in_min_depth
  doc: 'min coverage for informative sites (default: 10)'
  type: long?
  inputBinding:
    prefix: --min-depth
- id: in_ab_hom_ref
  doc: "allele balance range for homozygous reference\ninformative sites (default:\
    \ 0.0:0.2)"
  type: double?
  inputBinding:
    prefix: --ab-homref
- id: in_ab_ho_malt
  doc: "allele balance range for homozygous alternate\ninformative sites (default:\
    \ 0.8:1.0)"
  type: double?
  inputBinding:
    prefix: --ab-homalt
- id: in_ab_het
  doc: "allele balance range for heterozygous informative\nsites (default: 0.2:0.8)"
  type: double?
  inputBinding:
    prefix: --ab-het
- id: in_evidence_min_ratio
  doc: "minimum ratio of evidence for a parent to provide an\nunambiguous call. Default\
    \ 10:1 (default: 10)"
  type: long?
  inputBinding:
    prefix: --evidence-min-ratio
- id: in_search_dist
  doc: "maximum search distance from variant for informative\nsites (in bases) (default:\
    \ 5000)"
  type: long?
  inputBinding:
    prefix: --search-dist
- id: in_insert_size_max_sample
  doc: "maximum number of read inserts to sample in order to\nestimate concordant\
    \ read insert size (default:\n1000000)"
  type: long?
  inputBinding:
    prefix: --insert-size-max-sample
- id: in_min_map_qual
  doc: 'minimum map quality for reads (default: 1)'
  type: long?
  inputBinding:
    prefix: --min-map-qual
- id: in_stdev_s
  doc: "number of standard deviations from the mean insert\nlength to define a discordant\
    \ read (default: 3)"
  type: long?
  inputBinding:
    prefix: --stdevs
- id: in_read_len
  doc: 'expected length of input reads (default: 151)'
  type: long?
  inputBinding:
    prefix: --readlen
- id: in_split_error_margin
  doc: "margin of error for the location of split read\nclipping in bases (default:\
    \ 5)"
  type: long?
  inputBinding:
    prefix: --split-error-margin
- id: in_max_reads
  doc: "maximum number of reads to collect for phasing a\nsingle variant (default:\
    \ 100)\n"
  type: long?
  inputBinding:
    prefix: --max-reads
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "name for output file. Defaults to stdout (default:\n/dev/stdout)"
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/unfazed:1.0.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- unfazed
