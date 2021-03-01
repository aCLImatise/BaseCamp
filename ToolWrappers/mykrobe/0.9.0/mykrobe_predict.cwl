class: CommandLineTool
id: mykrobe_predict.cwl
inputs:
- id: in_km_er
  doc: kmer length (default:21)
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_tmp
  doc: 'tmp directory (default: tmp/)'
  type: Directory?
  inputBinding:
    prefix: --tmp
- id: in_keep_tmp
  doc: Dont remove tmp files
  type: boolean?
  inputBinding:
    prefix: --keep_tmp
- id: in_skeleton_dir
  doc: directory for skeleton binaries
  type: Directory?
  inputBinding:
    prefix: --skeleton_dir
- id: in_expected_depth
  doc: expected depth
  type: string?
  inputBinding:
    prefix: --expected_depth
- id: in_seq
  doc: sequence files (fasta,fastq,bam)
  type: string[]
  inputBinding:
    prefix: --seq
- id: in_ctx
  doc: cortex graph binary
  type: string?
  inputBinding:
    prefix: --ctx
- id: in_force
  doc: force
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_ont
  doc: "Set default for ONT data. Sets expected_error_rate to\n0.15 and to haploid"
  type: boolean?
  inputBinding:
    prefix: --ont
- id: in_guess_sequence_method
  doc: "Guess if ONT or Illumia based on error rate. If error\nrate is > 10%, ploidy\
    \ is set to haploid and a\nconfidence threshold is used"
  type: boolean?
  inputBinding:
    prefix: --guess_sequence_method
- id: in_ignore_minor_calls
  doc: Ignore minor calls when running resistance prediction
  type: boolean?
  inputBinding:
    prefix: --ignore_minor_calls
- id: in_ignore_filtered
  doc: don't include filtered genotypes
  type: string?
  inputBinding:
    prefix: --ignore_filtered
- id: in_model
  doc: "Genotype model used, default kmer_count. Options\nkmer_count, median_depth"
  type: string?
  inputBinding:
    prefix: --model
- id: in_ploidy
  doc: "Use a diploid (includes 0/1 calls) or haploid\ngenotyping model"
  type: long?
  inputBinding:
    prefix: --ploidy
- id: in_filters
  doc: don't include filtered genotypes
  type: string[]
  inputBinding:
    prefix: --filters
- id: in_report_all_calls
  doc: report all calls
  type: boolean?
  inputBinding:
    prefix: --report_all_calls
- id: in_expected_error_rate
  doc: "Expected sequencing error rate. Set to 0.15 for ONT\ngenotyping."
  type: double?
  inputBinding:
    prefix: --expected_error_rate
- id: in_min_variant_conf
  doc: minimum genotype confidence for variant genotyping
  type: string?
  inputBinding:
    prefix: --min_variant_conf
- id: in_min_gene_conf
  doc: minimum genotype confidence for gene genotyping
  type: long?
  inputBinding:
    prefix: --min_gene_conf
- id: in_min_proportion_expected_depth
  doc: "minimum depth required on the sum of both alleles.\nDefault 0.3 (30%)"
  type: long?
  inputBinding:
    prefix: --min_proportion_expected_depth
- id: in_min_gene_percent_co_vg_threshold
  doc: "all genes alleles found above this percent coverage\nwill be reported (default\
    \ 100 (only best alleles\nreported))"
  type: long?
  inputBinding:
    prefix: --min_gene_percent_covg_threshold
- id: in_output
  doc: File path to save output json file as. Default is to
  type: File?
  inputBinding:
    prefix: --output
- id: in_quiet
  doc: Only output warnings/errors to stderr
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: Output debugging information to stderr
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_panel
  doc: Name of panel to use. Ignored if species is 'custom'
  type: string?
  inputBinding:
    prefix: --panel
- id: in_custom_probe_set_path
  doc: "Required if species is 'custom'. Ignored otherwise.\nFile path to fasta file\
    \ from `mykrobe make-probes`."
  type: File?
  inputBinding:
    prefix: --custom_probe_set_path
- id: in_custom_variant_to_resistance_json
  doc: "For use with `--panel custom`. Ignored otherwise. File\npath to JSON with\
    \ key,value pairs of variant names and\ninduced drug resistance."
  type: File?
  inputBinding:
    prefix: --custom_variant_to_resistance_json
- id: in_custom_lineage_json
  doc: "For use with `--panel custom`. Ignored otherwise. File\npath to JSON made\
    \ by --lineage option of make-probes"
  type: File?
  inputBinding:
    prefix: --custom_lineage_json
- id: in_format
  doc: "Choose output format. Default: csv.\n"
  type: string?
  inputBinding:
    prefix: --format
- id: in_sample
  doc: sample id
  type: string
  inputBinding:
    position: 0
- id: in_species
  doc: "species name, or 'custom' to use custom data, in which\ncase --custom_probe_set_path\
    \ is required"
  type: string
  inputBinding:
    position: 1
- id: in_threads
  doc: -m MEMORY, --memory MEMORY
  type: string
  inputBinding:
    position: 0
- id: in_stdout_dot
  doc: '--panels_dir DIRNAME  Name of directory that contains panel data. Default:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: File path to save output json file as. Default is to
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mykrobe:0.9.0--py36hd181a71_2
cwlVersion: v1.1
baseCommand:
- mykrobe
- predict
