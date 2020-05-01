#!/usr/bin/env cwl-runner

baseCommand:
- plink
class: CommandLineTool
cwlVersion: v1.0
id: plink
inputs:
- doc: '[prefix]   : Specify prefix for output files.'
  id: out
  inputBinding:
    prefix: --out
  type: boolean
- doc: .
  id: reference
  inputBinding:
    prefix: --reference
  type: boolean
- doc: .
  id: t_file
  inputBinding:
    prefix: --tfile
  type: boolean
- doc: your command.
  id: real_ref_alleles
  inputBinding:
    prefix: --real-ref-alleles
  type: string
- doc: ', the first two control these thresholds.'
  id: check_sex
  inputBinding:
    prefix: --check-sex
  type: boolean
- doc: .
  id: homo_zy_g_window_snp
  inputBinding:
    prefix: --homozyg-window-snp
  type: boolean
- doc: are considered.
  id: extract
  inputBinding:
    prefix: --extract
  type: File
- doc: '[PLINK report filenames...]'
  id: meta_analysis
  inputBinding:
    prefix: --meta-analysis
  type: boolean
- doc: '[PLINK report filenames...] + <logscale | qt> <no-map | no-allele> <study>
    <report-all> <weighted-z>'
  id: meta_analysis
  inputBinding:
    prefix: --meta-analysis
  type: boolean
- doc: are considered.
  id: extract
  inputBinding:
    prefix: --extract
  type: File
- doc: split a job across multiple machines.)
  id: snps
  inputBinding:
    prefix: --snps
  type: string
- doc: )      values for Oxford-format filesets (def. 'NA').
  id: missing_code
  inputBinding:
    prefix: --missing_code
  type: boolean
- doc: '[num]   : Set --simulate case count (default 1000).'
  id: simulate_n_cases
  inputBinding:
    prefix: --simulate-ncases
  type: boolean
- doc: '[n]  : Set --simulate control count (default 1000).'
  id: simulate_n_controls
  inputBinding:
    prefix: --simulate-ncontrols
  type: boolean
- doc: '[p] : Set --simulate disease prevalence (default 0.01).'
  id: simulate_prevalence
  inputBinding:
    prefix: --simulate-prevalence
  type: boolean
- doc: '[num]        : Set --simulate-qt sample count (default 1000).'
  id: simulate_n
  inputBinding:
    prefix: --simulate-n
  type: boolean
- doc: '[prefix] : Set --simulate{-qt} FID/IID name prefix.'
  id: simulate_label
  inputBinding:
    prefix: --simulate-label
  type: boolean
- doc: '[freq] : Set --simulate{-qt} missing genotype frequency.'
  id: simulate_missing
  inputBinding:
    prefix: --simulate-missing
  type: boolean
- doc: "<0>     : Permit unrecognized chromosome codes.  The '0'"
  id: allow_extra_chr
  inputBinding:
    prefix: --allow-extra-chr
  type: boolean
- doc: .
  id: parameters
  inputBinding:
    prefix: --parameters
  type: boolean
- doc: '[port #]  : Connect to Rserve on a port other than 6311.'
  id: r_port
  inputBinding:
    prefix: --R-port
  type: boolean
- doc: '[host]    : Connect to Rserve host.'
  id: r_host
  inputBinding:
    prefix: --R-host
  type: boolean
- doc: '[sock]  : Connect to Rserve socket.'
  id: r_socket
  inputBinding:
    prefix: --R-socket
  type: boolean
- doc: '[k] [n] : Divide the output matrix into n pieces, and only compute the kth
    piece.  The primary output file will have the piece number included in its name,
    e.g. plink.rel.13 or plink.rel.13.gz if k is 13.  Concatenating these files in
    order will yield the full matrix of interest.  (Yes, this can be done before unzipping.)
    N.B. This generally cannot be used to directly write a symmetric square matrix.  Choose
    square0 or triangle shape instead, and postprocess as necessary.'
  id: parallel
  inputBinding:
    prefix: --parallel
  type: boolean
- doc: '[val]     : Set size, in MB, of initial workspace malloc attempt. (Practically
    mandatory when using GNU parallel.)'
  id: memory
  inputBinding:
    prefix: --memory
  type: boolean
- doc: '[val]    : Set maximum number of concurrent threads. This has one known limitation:
    some BLAS/LAPACK linear algebra operations are multithreaded in a way that PLINK
    cannot control.  If this is problematic, you should recompile against single-threaded
    BLAS/LAPACK.'
  id: threads
  inputBinding:
    prefix: --threads
  type: boolean
- doc: "[char]         : Change variant/covariate range delimiter (normally '-')."
  id: d
  inputBinding:
    prefix: --d
  type: boolean
- doc: '[val...]    : Set random number seed(s).  Each value must be an integer between
    0 and 4294967295 inclusive.'
  id: seed
  inputBinding:
    prefix: --seed
  type: boolean
- doc: '[val] : Set number of permutations per batch for some permutation tests.'
  id: perm_batch_size
  inputBinding:
    prefix: --perm-batch-size
  type: boolean
- doc: '[p] : Specify minimum p-value to write to reports.'
  id: output_min_p
  inputBinding:
    prefix: --output-min-p
  type: boolean
- doc: ': Use slower, more crash-resistant logging method.'
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
