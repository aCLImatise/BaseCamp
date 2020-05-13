class: CommandLineTool
id: methylpy_filter_allc.cwl
inputs:
- id: all_c_files
  doc: 'allc files to filter. (default: None)'
  type: string[]
  inputBinding:
    prefix: --allc-files
- id: output_files
  doc: 'Name of output files. Each output file matches each allc file. (default: None)'
  type: string[]
  inputBinding:
    prefix: --output-files
- id: num_procs
  doc: 'Number of processors you wish to use to parallelize this function (default:
    1)'
  type: string
  inputBinding:
    prefix: --num-procs
- id: mc_type
  doc: 'List of space separated cytosine nucleotide contexts for sites to be included
    in output file. These classifications may use the wildcards H (indicating anything
    but a G) and N (indicating any nucleotide). (default: None)'
  type: string[]
  inputBinding:
    prefix: --mc-type
- id: min_cov
  doc: 'Minimum number of reads that must cover a site for it to be included in the
    output file. (default: 0)'
  type: long
  inputBinding:
    prefix: --min-cov
- id: max_cov
  doc: 'Maximum number of reads that must cover a site for it to be included in the
    output file. By default this cutoff is not applied. (default: None)'
  type: long
  inputBinding:
    prefix: --max-cov
- id: max_mismatch
  doc: 'Maximum numbers of mismatch basecalls allowed in each nucleotide in the sequence
    context of a site for it to be included in output file. If the sequence context
    has three nucleotides, an example of this option is "0 1 2". It requires no mismatch
    basecall at the first nucleotide, at most one mismatch basecall at the second
    nucleotide, and at most two at the third nucleotide for a site to be reported.
    (default: None)'
  type: long[]
  inputBinding:
    prefix: --max-mismatch
- id: max_mismatch_frac
  doc: 'Maximum fraction of mismatch basecalls out of unambiguous basecalls allowed
    in each nucleotide in the sequence context of a site for it to be included in
    output file. If the sequence context has three nucleotides, an example of this
    option is "0 0 0.1". It requires no mismatch basecall at the first and second
    nucleotide, and at most 10% mismatches out of unambiguous basecalls at the third
    nucleotide for a site to be reported. (default: None)'
  type: long[]
  inputBinding:
    prefix: --max-mismatch-frac
- id: compress_output
  doc: 'Boolean indicating whether to compress (by gzip) the final output (default:
    True)'
  type: string
  inputBinding:
    prefix: --compress-output
- id: chrom_s
  doc: 'Space separated listing of chromosomes to be included in the output. By default,
    data of all chromosomes in input allc file will be included. (default: None)'
  type: string[]
  inputBinding:
    prefix: --chroms
outputs: []
cwlVersion: v1.1
baseCommand:
- methylpy
- filter-allc
