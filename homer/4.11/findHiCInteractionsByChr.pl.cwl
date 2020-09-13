class: CommandLineTool
id: ../../../findHiCInteractionsByChr.pl.cwl
inputs:
- id: in_one_column_output
  doc: One column output
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_include_entries_start
  doc: Include entries which start with .
  type: boolean
  inputBinding:
    prefix: -a
- id: in_like_a_exclude
  doc: Like -a, but exclude . and ..
  type: boolean
  inputBinding:
    prefix: -A
- id: in_list_by_columns
  doc: List by columns
  type: boolean
  inputBinding:
    prefix: -C
- id: in_list_by_lines
  doc: List by lines
  type: boolean
  inputBinding:
    prefix: -x
- id: in_list_directory_entries
  doc: List directory entries instead of contents
  type: boolean
  inputBinding:
    prefix: -d
- id: in_follow_symlinks
  doc: Follow symlinks
  type: boolean
  inputBinding:
    prefix: -L
- id: in_follow_symlinks_command
  doc: Follow symlinks on command line
  type: boolean
  inputBinding:
    prefix: -H
- id: in_recurse
  doc: Recurse
  type: boolean
  inputBinding:
    prefix: -R
- id: in_append_dir_entries
  doc: Append / to dir entries
  type: boolean
  inputBinding:
    prefix: -p
- id: in_append_indicator_one
  doc: Append indicator (one of */=@|) to entries
  type: boolean
  inputBinding:
    prefix: -F
- id: in_long_listing_format
  doc: Long listing format
  type: boolean
  inputBinding:
    prefix: -l
- id: in_list_inode_numbers
  doc: List inode numbers
  type: boolean
  inputBinding:
    prefix: -i
- id: in_list_numeric_uids
  doc: List numeric UIDs and GIDs instead of names
  type: boolean
  inputBinding:
    prefix: -n
- id: in_list_allocated_blocks
  doc: List allocated blocks
  type: boolean
  inputBinding:
    prefix: -s
- id: in_list_full_date
  doc: List full date and time
  type: boolean
  inputBinding:
    prefix: -e
- id: in_sort_reverse_order
  doc: Sort in reverse order
  type: boolean
  inputBinding:
    prefix: -r
- id: in_sort_by_size
  doc: Sort by size
  type: boolean
  inputBinding:
    prefix: -S
- id: in_sort_by_extension
  doc: Sort by extension
  type: boolean
  inputBinding:
    prefix: -X
- id: in_sort_by_version
  doc: Sort by version
  type: boolean
  inputBinding:
    prefix: -v
- id: in_l_sort_ctime
  doc: 'With -l: sort by ctime'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_l_sort_mtime
  doc: 'With -l: sort by mtime'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_l_sort_by
  doc: 'With -l: sort by atime'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_assume_terminal_n
  doc: Assume the terminal is N columns wide
  type: string
  inputBinding:
    prefix: -w
- id: in_color
  doc: '[={always,never,auto}]   Control coloring'
  type: boolean
  inputBinding:
    prefix: --color
- id: in_res
  doc: '<#> (Resolution of matrix in bp or use "-res site" [see below], default: 10000000)'
  type: boolean
  inputBinding:
    prefix: -res
- id: in_window
  doc: '<#> (size of region to count tags for overlapping windows, default: same as
    res)'
  type: boolean
  inputBinding:
    prefix: -window
- id: in_chr
  doc: '(create matrix on this chromosome, default: whole genome)'
  type: string
  inputBinding:
    prefix: -chr
- id: in_start
  doc: <#> (start matrix at this position, default:0)
  type: boolean
  inputBinding:
    prefix: -start
- id: in_end
  doc: '<#> (end matrix at this position, default: no limit)'
  type: boolean
  inputBinding:
    prefix: -end
- id: in_pos
  doc: :xxxxxx-yyyyyy (UCSC formatted position instead of -chr/-start/-end)
  type: string
  inputBinding:
    prefix: -pos
- id: in_start_two
  doc: "<#>, -end2 <#>, or -pos2 (Use these positions on the\ny-axis of the matrix.\
    \  Otherwise the matrix will be sysmetric)"
  type: long
  inputBinding:
    prefix: -start2
- id: in_vs_genome
  doc: (normally makes a square matrix, this will force 2nd set of peaks to be the
    genome)
  type: boolean
  inputBinding:
    prefix: -vsGenome
- id: in_chop_if_y
  doc: '(divide up peaks into regions the size of the resolution, default: use peak
    midpoints)'
  type: boolean
  inputBinding:
    prefix: -chopify
- id: in_relative
  doc: (use with -maxDist <#>, outputs diagonal of matrix up to maxDistance)
  type: boolean
  inputBinding:
    prefix: -relative
- id: in_pout
  doc: (output peaks used for analysis as a peak file, -pout2 <file> for 2nd set)
  type: File
  inputBinding:
    prefix: -pout
- id: in_ihs_kb
  doc: "<#> (normalize counts to \"interactions per hundred square kilobases per billion,\
    \ default)\nUse '-normTotal <#>' and '-normArea <#>' to modify normalization constants,\
    \ area in bp^2\nUse '-normTotal given' and '-normArea given' to disable normalizations"
  type: boolean
  inputBinding:
    prefix: -ihskb
- id: in_raw
  doc: (report raw interaction counts)
  type: boolean
  inputBinding:
    prefix: -raw
- id: in_coverage_norm
  doc: (Only adjust reads based on total interactions per region, default)
  type: boolean
  inputBinding:
    prefix: -coverageNorm
- id: in_balance
  doc: (balance resulting matrix - row/column totals the same)
  type: boolean
  inputBinding:
    prefix: -balance
- id: in_dist_norm
  doc: (return log2 obs/expected counts normalized for interaction distance)
  type: boolean
  inputBinding:
    prefix: -distNorm
- id: in_log
  doc: '| -nolog (force matrix to be linear or log2 transformed)'
  type: boolean
  inputBinding:
    prefix: -log
- id: in_corr
  doc: (report Pearson's correlation coeff, use "-corrIters <#>" to recursively calculate)
  type: boolean
  inputBinding:
    prefix: -corr
- id: in_corr_depth
  doc: '<#> (merge regions in correlation so that minimum # expected tags per data
    point)'
  type: boolean
  inputBinding:
    prefix: -corrDepth
- id: in_output_file_name
  doc: '(Output file name, default: sent to stdout)'
  type: File
  inputBinding:
    prefix: -o
- id: in_compaction_stats
  doc: (calculates DLR and ICF compaction scores)
  type: File
  inputBinding:
    prefix: -compactionStats
- id: in_dlr_distance
  doc: '<#> (Cutoff distance for distal vs. local interactions for DLR, default: 3Mb'
  type: boolean
  inputBinding:
    prefix: -dlrDistance
- id: in_ifc
  doc: (outputs interaction frequence curve for regions, can set to "auto")
  type: File
  inputBinding:
    prefix: -ifc
- id: in_four_c
  doc: (outputs tags interacting with specified regions)
  type: File
  inputBinding:
    prefix: -4C
- id: in_cpu
  doc: '<#> (number of CPUs to use, default: 1)'
  type: boolean
  inputBinding:
    prefix: -cpu
- id: in_no_matrix
  doc: (skip matrix creation - use if more than 100,000 loci)
  type: boolean
  inputBinding:
    prefix: -nomatrix
- id: in_std
  doc: <#> (# of std deviations from mean interactions per region to exclude, default:8)
  type: boolean
  inputBinding:
    prefix: -std
- id: in_min
  doc: '<#> (minimum fraction of average read depth to include in analysis, default:
    0.05)'
  type: boolean
  inputBinding:
    prefix: -min
- id: in_min_expect
  doc: '<#> (minimum fraction of average read depth to use for coverage normalization,
    default: 0.75)'
  type: boolean
  inputBinding:
    prefix: -minExpect
- id: in_override
  doc: (Allow very large matrices to be created... be carful using this)
  type: boolean
  inputBinding:
    prefix: -override
- id: in_force
  doc: (force the creation of a fresh genome-wide background model)
  type: boolean
  inputBinding:
    prefix: -force
- id: in_bg_only
  doc: (quit after creating the background model)
  type: boolean
  inputBinding:
    prefix: -bgonly
- id: in_create_model
  doc: (Create custome bg from regions specified, i.e. -p/-pos)
  type: File
  inputBinding:
    prefix: -createModel
- id: in_model
  doc: (Use Custom background model, -modelBg for -ped)
  type: File
  inputBinding:
    prefix: -model
- id: in_randomize
  doc: "<# reads> (and the output is a PE tag file, initail PE tag directory not used\n\
    Use makeTagDirectory ... -t outputfile to create the new directory)"
  type: File
  inputBinding:
    prefix: -randomize
- id: in_logp
  doc: (output log p-values from old-style interaction calculations)
  type: boolean
  inputBinding:
    prefix: -logp
- id: in_expected
  doc: (report expected interaction counts based on average profile)
  type: boolean
  inputBinding:
    prefix: -expected
- id: in_raw_and_expected
  doc: (raw counts sent to stdout)
  type: File
  inputBinding:
    prefix: -rawAndExpected
- id: in_cluster
  doc: '(cluster regions, uses "-o" to name cdt/gtr files, default: out.cdt)'
  type: boolean
  inputBinding:
    prefix: -cluster
- id: in_cluster_fixed
  doc: (clusters adjacent regions, good for linear domains)
  type: boolean
  inputBinding:
    prefix: -clusterFixed
- id: in_interactions
  doc: (output interactions, add "-center" to adjust pos to avg of reads)
  type: File
  inputBinding:
    prefix: -interactions
- id: in_p_value
  doc: <#> (p-value cutoff for interactions, default 0.001)
  type: boolean
  inputBinding:
    prefix: -pvalue
- id: in_zscore
  doc: <#> (z-score cutoff for interactions, default 1.0)
  type: boolean
  inputBinding:
    prefix: -zscore
- id: in_mind_ist
  doc: '<#> (Minimum interaction distance, default: resolution/2)'
  type: boolean
  inputBinding:
    prefix: -minDist
- id: in_max_dist
  doc: '<#> (Maximum interaction distance, default: -1=none)'
  type: boolean
  inputBinding:
    prefix: -maxDist
- id: in_boundary
  doc: <#> (score boundaries at the given scale i.e. 100000)
  type: boolean
  inputBinding:
    prefix: -boundary
- id: in_ped
  doc: ''
  type: Directory
  inputBinding:
    prefix: -ped
- id: in_washu
  doc: (Both matrix and interaction outputs will be in WashH BED format)
  type: boolean
  inputBinding:
    prefix: -washu
- id: in_circo_s
  doc: (creates circos files with the given prefix)
  type: File
  inputBinding:
    prefix: -circos
- id: in_similar_visiualization_labels
  doc: (similar to visiualization of genes/-g, but no labels)
  type: File
  inputBinding:
    prefix: -b
- id: in_shows_gene_locations
  doc: (shows gene locations)
  type: File
  inputBinding:
    prefix: -g
- id: in_hist
  doc: '<#> (create a histogram matrix around peak positions, # is the resolution)'
  type: boolean
  inputBinding:
    prefix: -hist
- id: in_size
  doc: <#> (size of region in histogram, default = 100 * resolution)
  type: boolean
  inputBinding:
    prefix: -size
- id: in_i_raw
  doc: (output raw reads from interactions, or -irawtags <file>)
  type: File
  inputBinding:
    prefix: -iraw
- id: in_one_aacxdlhrfplinsehrsxvctu
  doc: ''
  type: boolean
  inputBinding:
    prefix: -1AaCxdLHRFplinsehrSXvctu
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_pout
  doc: (output peaks used for analysis as a peak file, -pout2 <file> for 2nd set)
  type: File
  outputBinding:
    glob: $(inputs.in_pout)
- id: out_output_file_name
  doc: '(Output file name, default: sent to stdout)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_name)
- id: out_compaction_stats
  doc: (calculates DLR and ICF compaction scores)
  type: File
  outputBinding:
    glob: $(inputs.in_compaction_stats)
- id: out_ifc
  doc: (outputs interaction frequence curve for regions, can set to "auto")
  type: File
  outputBinding:
    glob: $(inputs.in_ifc)
- id: out_four_c
  doc: (outputs tags interacting with specified regions)
  type: File
  outputBinding:
    glob: $(inputs.in_four_c)
- id: out_create_model
  doc: (Create custome bg from regions specified, i.e. -p/-pos)
  type: File
  outputBinding:
    glob: $(inputs.in_create_model)
- id: out_randomize
  doc: "<# reads> (and the output is a PE tag file, initail PE tag directory not used\n\
    Use makeTagDirectory ... -t outputfile to create the new directory)"
  type: File
  outputBinding:
    glob: $(inputs.in_randomize)
- id: out_i_raw
  doc: (output raw reads from interactions, or -irawtags <file>)
  type: File
  outputBinding:
    glob: $(inputs.in_i_raw)
cwlVersion: v1.1
baseCommand:
- findHiCInteractionsByChr.pl
