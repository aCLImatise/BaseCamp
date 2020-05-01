#!/usr/bin/env cwl-runner

baseCommand:
- illumina-cleanup
class: CommandLineTool
cwlVersion: v1.0
id: illumina-cleanup
inputs:
- doc: ''
  id: '8'
  inputBinding:
    position: 0
  type: string
- doc: An input file containing the sample name and absolute paths to FASTQs to process.
  id: fast_qs
  inputBinding:
    prefix: --fastqs
  type: string
- doc: 'Reduce samples to a given coverage. (Default: 100)'
  id: coverage
  inputBinding:
    prefix: --coverage
  type: long
- doc: 'Expected genome size (bp) for all samples. (Default: 0).'
  id: genome_size
  inputBinding:
    prefix: --genome_size
  type: long
- doc: Directory to write results to. (Default ./)
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'The maximum number of processors this workflow should have access to at any
    given moment. (Default: 1)'
  id: max_cpus
  inputBinding:
    prefix: --max_cpus
  type: long
- doc: 'Number of processors made available to a single process. If greater than "--max_cpus"
    it will be set equal to "--max_cpus" (Default: 1)'
  id: cpus
  inputBinding:
    prefix: --cpus
  type: long
- doc: Print an example of expected input for FASTQs file.
  id: example_fast_qs
  inputBinding:
    prefix: --example_fastqs
  type: boolean
- doc: Verify "--fastqs" produces the expected inputs.
  id: check_fast_qs
  inputBinding:
    prefix: --check_fastqs
  type: boolean
- doc: Keeps 'work' and '.nextflow' logs, default is to delete on successful completion.
  id: keep_cache
  inputBinding:
    prefix: --keep_cache
  type: boolean
- doc: 'Illumina adapters to remove (Default: BBmap adapters)'
  id: adapters
  inputBinding:
    prefix: --adapters
  type: string
- doc: 'Kmer length used for finding adapters. Adapters shorter than k will not be
    found. (Default: 23)'
  id: adapter_k
  inputBinding:
    prefix: --adapter_k
  type: long
- doc: 'phiX174 reference genome to remove (Default: NC_001422)'
  id: phi_x
  inputBinding:
    prefix: --phix
  type: string
- doc: 'Kmer length used for finding phiX174. Contaminants shorter than k will not
    be found. (Default: 31)'
  id: phi_x_k
  inputBinding:
    prefix: --phix_k
  type: long
- doc: 'Trim reads to remove bases matching reference kmers. Values: f (do not trim)
    r (trim to the right, Default) l (trim to the left)'
  id: k_trim
  inputBinding:
    prefix: --ktrim
  type: string
- doc: 'Look for shorter kmers at read tips down to this length, when k-trimming or
    masking. 0 means disabled. Enabling this will disable maskmiddle. (Default: 11)'
  id: mink
  inputBinding:
    prefix: --mink
  type: long
- doc: 'Maximum Hamming distance for ref kmers (subs only). Memory use is proportional
    to (3*K)^hdist. (Default: 1)'
  id: h_dist
  inputBinding:
    prefix: --hdist
  type: long
- doc: 'When kmer right-trimming, trim both reads to the minimum length of either.
    Values: f (do not equally trim) t (equally trim to the right, Default)'
  id: tpe
  inputBinding:
    prefix: --tpe
  type: boolean
- doc: 'Trim adapters based on where paired reads overlap. Values: f (do not trim
    by overlap) t (trim by overlap, Default)'
  id: tbo
  inputBinding:
    prefix: --tbo
  type: boolean
- doc: 'Trim read ends to remove bases with quality below trimq. Performed AFTER looking
    for kmers. Values: rl (trim both ends, Default) f (neither end) r (right end only)
    l (left end only) w (sliding window)'
  id: q_trim
  inputBinding:
    prefix: --qtrim
  type: string
- doc: 'Regions with average quality BELOW this will be trimmed if qtrim is set to
    something other than f. (Default: 6)'
  id: trim_q
  inputBinding:
    prefix: --trimq
  type: double
- doc: 'Reads with average quality (after trimming) below this will be discarded.
    (Default: 20)'
  id: maq
  inputBinding:
    prefix: --maq
  type: long
- doc: 'Reads shorter than this after trimming will be discarded. Pairs will be discarded
    if both are shorter. (Default: 35)'
  id: minlength
  inputBinding:
    prefix: --minlength
  type: long
- doc: 'If positive, right-trim length to be equal to zero, modulo this number. (Default:
    0)'
  id: ftm
  inputBinding:
    prefix: --ftm
  type: long
- doc: 'Discard reads with invalid characters as bases. Values: f (keep all reads)
    t (toss reads with ambiguous bases, Default)'
  id: toss_junk
  inputBinding:
    prefix: --tossjunk
  type: boolean
- doc: 'Output quality offset. Values: 33 (PHRED33 offset quality scores, Default)
    64 (PHRED64 offset quality scores) auto (keeps the current input offset)'
  id: q_out
  inputBinding:
    prefix: --qout
  type: string
- doc: 'This will be passed to Java to set memory usage. Examples: 8g will specify
    8 gigs of RAM (Default) 20g will specify 20 gigs of RAM 200m will specify 200
    megs of RAM'
  id: x_mx
  inputBinding:
    prefix: --xmx
  type: string
- doc: 'Max number of corrections within a 20bp window (Default: 1)'
  id: max_cor
  inputBinding:
    prefix: --maxcor
  type: long
- doc: Set to a positive number to use that prng seed for sampling (Default 42).
  id: sample_seed
  inputBinding:
    prefix: --sampleseed
  type: long
