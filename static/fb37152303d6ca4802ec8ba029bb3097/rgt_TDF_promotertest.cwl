class: CommandLineTool
id: rgt_TDF_promotertest.cwl
inputs:
- id: r
  doc: Input file name for RNA sequence (in fasta format)
  type: boolean
  inputBinding:
    prefix: -r
- id: rn
  doc: Define the RNA name
  type: boolean
  inputBinding:
    prefix: -rn
- id: de
  doc: Input file for target gene list (gene symbols or Ensembl ID)
  type: boolean
  inputBinding:
    prefix: -de
- id: bed
  doc: Input BED file of the promoter regions of target genes
  type: boolean
  inputBinding:
    prefix: -bed
- id: bg
  doc: Input BED file of the promoter regions of background genes
  type: boolean
  inputBinding:
    prefix: -bg
- id: o
  doc: Output directory name for all the results
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: Define the title name for the results under the Output name. (default is RNA
    name)
  type: boolean
  inputBinding:
    prefix: -t
- id: organism
  doc: Define the organism
  type: boolean
  inputBinding:
    prefix: -organism
- id: gtf
  doc: Define the GTF file for annotation (optional)
  type: boolean
  inputBinding:
    prefix: -gtf
- id: tss
  doc: 'Define the distance between the promoter regions and TSS along gene body (default:
    0)'
  type: boolean
  inputBinding:
    prefix: -tss
- id: pl
  doc: 'Define the promotor length (default: 1000)'
  type: boolean
  inputBinding:
    prefix: -pl
- id: show_dbs
  doc: Show the plots and statistics of DBS (DNA Binding sites)
  type: boolean
  inputBinding:
    prefix: -showdbs
- id: score
  doc: Load score column from input gene list or BED file for analysis.
  type: boolean
  inputBinding:
    prefix: -score
- id: score_h
  doc: Use the header of scores from the given gene list or BED file.
  type: boolean
  inputBinding:
    prefix: -scoreh
- id: a
  doc: 'Define significance level for rejection null hypothesis (default: 0.05)'
  type: boolean
  inputBinding:
    prefix: -a
- id: ccf
  doc: 'Define the cut off of triplex-forming promoters per DBD in percentage of total
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
- id: filter_havana
  doc: Apply filtering to remove HAVANA entries.
  type: boolean
  inputBinding:
    prefix: -filter_havana
- id: protein_coding
  doc: Apply filtering to get only protein coding genes.
  type: boolean
  inputBinding:
    prefix: -protein_coding
- id: known_only
  doc: Apply filtering to get only known genes.
  type: boolean
  inputBinding:
    prefix: -known_only
- id: dump
  doc: Only dump the preprocessed file and leave the program.
  type: boolean
  inputBinding:
    prefix: -dump
- id: rna_exp
  doc: Given a file with RNA name and the expression value
  type: boolean
  inputBinding:
    prefix: -rnaexp
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
- promotertest
