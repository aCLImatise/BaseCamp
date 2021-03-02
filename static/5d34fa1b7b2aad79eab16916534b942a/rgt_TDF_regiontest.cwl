class: CommandLineTool
id: rgt_TDF_regiontest.cwl
inputs:
- id: in_input_file_name
  doc: Input file name for RNA sequence (in fasta format)
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_rl
  doc: Input list for paths to all RNA sequences (in fasta format)
  type: boolean?
  inputBinding:
    prefix: -rl
- id: in_rn
  doc: Define the RNA name
  type: boolean?
  inputBinding:
    prefix: -rn
- id: in_bed
  doc: Input BED file for interested regions on DNA
  type: boolean?
  inputBinding:
    prefix: -bed
- id: in_output_directory_name
  doc: Output directory name for all the results and temporary files
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_define_title_name
  doc: "Define the title name for the results under the Output name.\n(default is\
    \ RNA name)"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_number_times_randomization
  doc: 'Number of times for randomization (default: 10000)'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_organism
  doc: Define the organism
  type: boolean?
  inputBinding:
    prefix: -organism
- id: in_show_dbs
  doc: Show the plots and statistics of DBS (DNA Binding sites)
  type: boolean?
  inputBinding:
    prefix: -showdbs
- id: in_score
  doc: Load score column from input BED file
  type: boolean?
  inputBinding:
    prefix: -score
- id: in_define_significance_level
  doc: "Define significance level for rejection null hypothesis\n(default: 0.05)"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_ccf
  doc: "Define the cut off of triplex-forming regions per DBD in\npercentage of total\
    \ triplexes (0-1) or an integer. (default:\n0.1)"
  type: boolean?
  inputBinding:
    prefix: -ccf
- id: in_rt
  doc: Remove temporary files (fa, txp...etc)
  type: boolean?
  inputBinding:
    prefix: -rt
- id: in_log
  doc: Set the plots in log scale
  type: boolean?
  inputBinding:
    prefix: -log
- id: in_input_bed_file_mask
  doc: Input BED file as mask in randomization
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_obed
  doc: Output the BED files for DNA binding sites.
  type: boolean?
  inputBinding:
    prefix: -obed
- id: in_show_pa
  doc: Show parallel and antiparallel bindings in the plot
  type: boolean?
  inputBinding:
    prefix: -showpa
- id: in_no_file
  doc: Don't save any files in the output folder, except the
  type: Directory?
  inputBinding:
    prefix: -nofile
- id: in_set_maximal_errorrate
  doc: "[Triplexes] Set the maximal error-rate in % tolerated\n(default: 20)"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_sets_tolerated_number
  doc: "[Triplexes] Sets the tolerated number of consecutive errors\nwith respect\
    \ to the canonical triplex rules as such were found\nto greatly destabilize triplexes\
    \ in vitro (default: 2)"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_fr
  doc: "[Triplexes] Activates the filtering of low complexity regions\nand repeats\
    \ in the sequence data (default: off)"
  type: boolean?
  inputBinding:
    prefix: -fr
- id: in_fm
  doc: "[Triplexes] Method to quickly discard non-hits (default:\n0).'0' = greedy\
    \ approach; '1' = q-gram filtering."
  type: boolean?
  inputBinding:
    prefix: -fm
- id: in_of
  doc: '[Triplexes] Define output formats of Triplexes (default: 1)'
  type: boolean?
  inputBinding:
    prefix: -of
- id: in_mf
  doc: "[Triplexes] Merge overlapping features into a cluster and\nreport the spanning\
    \ region."
  type: boolean?
  inputBinding:
    prefix: -mf
- id: in_rm
  doc: '[Triplexes] Set the multiprocessing'
  type: boolean?
  inputBinding:
    prefix: -rm
- id: in_par
  doc: '[Triplexes] Define other parameters for Triplexes'
  type: boolean?
  inputBinding:
    prefix: -par
- id: in_separately_dot
  doc: -mp           Define the number of threads for multiprocessing
  type: string
  inputBinding:
    position: 0
- id: in_statistics_dot
  doc: '-l            [Triplexes] Define the minimum length of triplex (default: 20)'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_name
  doc: Output directory name for all the results and temporary files
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_name)
- id: out_no_file
  doc: Don't save any files in the output folder, except the
  type: Directory?
  outputBinding:
    glob: $(inputs.in_no_file)
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-TDF
- regiontest
