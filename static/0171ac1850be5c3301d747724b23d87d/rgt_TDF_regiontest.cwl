class: CommandLineTool
id: rgt_TDF_regiontest.cwl
inputs:
- id: r
  doc: Input file name for RNA sequence (in fasta format)
  type: boolean
  inputBinding:
    prefix: -r
- id: rl
  doc: Input list for paths to all RNA sequences (in fasta format)
  type: boolean
  inputBinding:
    prefix: -rl
- id: rn
  doc: Define the RNA name
  type: boolean
  inputBinding:
    prefix: -rn
- id: bed
  doc: Input BED file for interested regions on DNA
  type: boolean
  inputBinding:
    prefix: -bed
- id: o
  doc: Output directory name for all the results and temporary files
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: Define the title name for the results under the Output name. (default is RNA
    name)
  type: boolean
  inputBinding:
    prefix: -t
- id: n
  doc: 'Number of times for randomization (default: 10000)'
  type: boolean
  inputBinding:
    prefix: -n
- id: organism
  doc: Define the organism
  type: boolean
  inputBinding:
    prefix: -organism
- id: show_dbs
  doc: Show the plots and statistics of DBS (DNA Binding sites)
  type: boolean
  inputBinding:
    prefix: -showdbs
- id: score
  doc: Load score column from input BED file
  type: boolean
  inputBinding:
    prefix: -score
- id: a
  doc: 'Define significance level for rejection null hypothesis (default: 0.05)'
  type: boolean
  inputBinding:
    prefix: -a
- id: ccf
  doc: 'Define the cut off of triplex-forming regions per DBD in percentage of total
    triplexes (0-1) or an integer. (default: 0.1)'
  type: boolean
  inputBinding:
    prefix: -ccf
- id: rt
  doc: Remove temporary files (fa, txp...etc)
  type: boolean
  inputBinding:
    prefix: -rt
- id: log
  doc: Set the plots in log scale
  type: boolean
  inputBinding:
    prefix: -log
- id: f
  doc: Input BED file as mask in randomization
  type: boolean
  inputBinding:
    prefix: -f
- id: obed
  doc: Output the BED files for DNA binding sites.
  type: boolean
  inputBinding:
    prefix: -obed
- id: show_pa
  doc: Show parallel and antiparallel bindings in the plot separately.
  type: boolean
  inputBinding:
    prefix: -showpa
- id: mp
  doc: Define the number of threads for multiprocessing
  type: boolean
  inputBinding:
    prefix: -mp
- id: no_file
  doc: Don't save any files in the output folder, except the statistics.
  type: boolean
  inputBinding:
    prefix: -nofile
- id: l
  doc: '[Triplexes] Define the minimum length of triplex (default: 20)'
  type: boolean
  inputBinding:
    prefix: -l
- id: e
  doc: '[Triplexes] Set the maximal error-rate in % tolerated (default: 20)'
  type: boolean
  inputBinding:
    prefix: -e
- id: c
  doc: '[Triplexes] Sets the tolerated number of consecutive errors with respect to
    the canonical triplex rules as such were found to greatly destabilize triplexes
    in vitro (default: 2)'
  type: boolean
  inputBinding:
    prefix: -c
- id: fr
  doc: '[Triplexes] Activates the filtering of low complexity regions and repeats
    in the sequence data (default: off)'
  type: boolean
  inputBinding:
    prefix: -fr
- id: fm
  doc: "[Triplexes] Method to quickly discard non-hits (default: 0).'0' = greedy approach;\
    \ '1' = q-gram filtering."
  type: boolean
  inputBinding:
    prefix: -fm
- id: of
  doc: '[Triplexes] Define output formats of Triplexes (default: 1)'
  type: boolean
  inputBinding:
    prefix: -of
- id: mf
  doc: '[Triplexes] Merge overlapping features into a cluster and report the spanning
    region.'
  type: boolean
  inputBinding:
    prefix: -mf
- id: rm
  doc: '[Triplexes] Set the multiprocessing'
  type: boolean
  inputBinding:
    prefix: -rm
- id: par
  doc: '[Triplexes] Define other parameters for Triplexes'
  type: boolean
  inputBinding:
    prefix: -par
outputs: []
cwlVersion: v1.1
baseCommand:
- rgt-TDF
- regiontest
