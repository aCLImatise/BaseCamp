class: CommandLineTool
id: rgt_TDF_promotertest.cwl
inputs:
- id: in_input_file_name
  doc: Input file name for RNA sequence (in fasta format)
  type: boolean
  inputBinding:
    prefix: -r
- id: in_rn
  doc: Define the RNA name
  type: boolean
  inputBinding:
    prefix: -rn
- id: in_de
  doc: "Input file for target gene list (gene symbols or Ensembl\nID)"
  type: boolean
  inputBinding:
    prefix: -de
- id: in_bed
  doc: Input BED file of the promoter regions of target genes
  type: boolean
  inputBinding:
    prefix: -bed
- id: in_bg
  doc: Input BED file of the promoter regions of background
  type: boolean
  inputBinding:
    prefix: -bg
- id: in_define_title_name
  doc: "Define the title name for the results under the Output\nname. (default is\
    \ RNA name)"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_organism
  doc: Define the organism
  type: boolean
  inputBinding:
    prefix: -organism
- id: in_gtf
  doc: Define the GTF file for annotation (optional)
  type: boolean
  inputBinding:
    prefix: -gtf
- id: in_tss
  doc: "Define the distance between the promoter regions and TSS\nalong gene body\
    \ (default: 0)"
  type: boolean
  inputBinding:
    prefix: -tss
- id: in_pl
  doc: 'Define the promotor length (default: 1000)'
  type: boolean
  inputBinding:
    prefix: -pl
- id: in_show_dbs
  doc: Show the plots and statistics of DBS (DNA Binding sites)
  type: boolean
  inputBinding:
    prefix: -showdbs
- id: in_score
  doc: Load score column from input gene list or BED file for
  type: boolean
  inputBinding:
    prefix: -score
- id: in_ccf
  doc: "Define the cut off of triplex-forming promoters per DBD\nin percentage of\
    \ total triplexes (0-1) or an integer.\n(default: 0.1)"
  type: boolean
  inputBinding:
    prefix: -ccf
- id: in_rt
  doc: Remove temporary files (fa, txp...etc)
  type: boolean
  inputBinding:
    prefix: -rt
- id: in_log
  doc: Set the plots in log scale
  type: boolean
  inputBinding:
    prefix: -log
- id: in_obed
  doc: Output the BED files for DNA binding sites.
  type: boolean
  inputBinding:
    prefix: -obed
- id: in_show_pa
  doc: Show parallel and antiparallel bindings in the plot
  type: boolean
  inputBinding:
    prefix: -showpa
- id: in_protein_coding
  doc: Apply filtering to get only protein coding genes.
  type: boolean
  inputBinding:
    prefix: -protein_coding
- id: in_known_only
  doc: Apply filtering to get only known genes.
  type: boolean
  inputBinding:
    prefix: -known_only
- id: in_dump
  doc: Only dump the preprocessed file and leave the program.
  type: boolean
  inputBinding:
    prefix: -dump
- id: in_rna_exp
  doc: Given a file with RNA name and the expression value
  type: boolean
  inputBinding:
    prefix: -rnaexp
- id: in_no_file
  doc: Don't save any files in the output folder, except the
  type: Directory
  inputBinding:
    prefix: -nofile
- id: in_set_maximal_errorrate
  doc: "[Triplexes] Set the maximal error-rate in % tolerated\n(default: 20)"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_sets_tolerated_number
  doc: "[Triplexes] Sets the tolerated number of consecutive\nerrors with respect\
    \ to the canonical triplex rules as\nsuch were found to greatly destabilize triplexes\
    \ in\nvitro (default: 2)"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_fr
  doc: "[Triplexes] Activates the filtering of low complexity\nregions and repeats\
    \ in the sequence data (default: off)"
  type: boolean
  inputBinding:
    prefix: -fr
- id: in_fm
  doc: "[Triplexes] Method to quickly discard non-hits (default:\n0).'0' = greedy\
    \ approach; '1' = q-gram filtering."
  type: boolean
  inputBinding:
    prefix: -fm
- id: in_of
  doc: "[Triplexes] Define output formats of Triplexes (default:\n1)"
  type: boolean
  inputBinding:
    prefix: -of
- id: in_mf
  doc: "[Triplexes] Merge overlapping features into a cluster\nand report the spanning\
    \ region."
  type: boolean
  inputBinding:
    prefix: -mf
- id: in_rm
  doc: '[Triplexes] Set the multiprocessing'
  type: boolean
  inputBinding:
    prefix: -rm
- id: in_par
  doc: '[Triplexes] Define other parameters for Triplexes'
  type: boolean
  inputBinding:
    prefix: -par
- id: in_genes
  doc: -o                  Output directory name for all the results
  type: string
  inputBinding:
    position: 0
- id: in_analysis_dot
  doc: -scoreh             Use the header of scores from the given gene list or BED
  type: string
  inputBinding:
    position: 1
- id: in_file_dot
  doc: -a                  Define significance level for rejection null hypothesis
  type: File
  inputBinding:
    position: 2
- id: in_separately_dot
  doc: -filter_havana      Apply filtering to remove HAVANA entries.
  type: string
  inputBinding:
    position: 0
- id: in_statistics_dot
  doc: -l                  [Triplexes] Define the minimum length of triplex
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_file
  doc: Don't save any files in the output folder, except the
  type: Directory
  outputBinding:
    glob: $(inputs.in_no_file)
cwlVersion: v1.1
baseCommand:
- rgt-TDF
- promotertest
