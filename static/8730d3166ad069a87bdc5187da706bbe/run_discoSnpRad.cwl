class: CommandLineTool
id: ../../../run_discoSnpRad.sh.cwl
inputs:
- id: _graph_file
  doc: '| --graph <file name> reuse a previously created graph (.h5 file) with same
    prefix and same k and c parameters.'
  type: boolean
  inputBinding:
    prefix: -g
- id: _prefix_string
  doc: '| --prefix <string> All out files will start with this prefix. Default="discoRes"'
  type: boolean
  inputBinding:
    prefix: -p
- id: _maxcoverage_int
  doc: "| --max_coverage <int value> Set the maximal coverage for each read set: Used\
    \ by kissnp2 (don't use kmers with higher coverage). Default=2^31-1"
  type: boolean
  inputBinding:
    prefix: -C
- id: _nolowcomplexity_remove
  doc: '| --no_low_complexity Remove low complexity bubbles'
  type: boolean
  inputBinding:
    prefix: -l
- id: _deletionmaxsize_int
  doc: '| --deletion_max_size <int value> discoSnpRad will search for deletions of
    size from 1 to D included. Default=0'
  type: boolean
  inputBinding:
    prefix: -D
- id: max_size_cluster
  doc: Discards cluster containing more than this number of variants. (Default 150)
    Requires the -S or --src option
  type: long
  inputBinding:
    prefix: --max_size_cluster
- id: max_missing
  doc: Remove variants with more than max_missing % missing values. (Default 0.95,
    removes variants detected in 5% and less populations)
  type: double
  inputBinding:
    prefix: --max_missing
- id: min_rank
  doc: Remove variants whose rank is smaller than this threshold. (Default 0.4)
  type: double
  inputBinding:
    prefix: --min_rank
- id: _maxsnpperbubble_int
  doc: '| --max_snp_per_bubble <int> discoSnpRad will search up to P SNPs in a unique
    bubble. Default=5'
  type: boolean
  inputBinding:
    prefix: -P
- id: _maxsubstitutions_int
  doc: '| --max_substitutions <int> Set the number of authorized substitutions used
    while mapping reads on found SNPs (kissreads). Default=10'
  type: boolean
  inputBinding:
    prefix: -d
- id: _maxthreads_int
  doc: '| --max_threads <int> Max number of used threads. 0 means all threads default
    0'
  type: boolean
  inputBinding:
    prefix: -u
- id: wraith_mode_only
  doc: 'Wraith mode: only show all discoSnpRad commands without running them'
  type: boolean
  inputBinding:
    prefix: -w
- id: verbose_avoids_output
  doc: Verbose 0 (avoids progress output) or 1 (enables progress output) -- default=1.
  type: string
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- run_discoSnpRad.sh
