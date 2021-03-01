class: CommandLineTool
id: compareMotifs.pl.cwl
inputs:
- id: in_reduce_thresh
  doc: '<#> (Similarity Threshold used to remove similar motifs, default: 0.6)'
  type: boolean?
  inputBinding:
    prefix: -reduceThresh
- id: in_match_thresh
  doc: "<#|T#> (Similarity Threshold to report alignments with known motifs.  Use\
    \ T#\n[i.e. T10] to match the top # known motifs regardless of similarity, default:\
    \ T10)"
  type: boolean?
  inputBinding:
    prefix: -matchThresh
- id: in_known
  doc: "(Library of known motifs to compare to input motifs, default:\n\"/usr/local/share/homer-4.11-2/.//data/knownTFs//all/all.motifs\""
  type: File?
  inputBinding:
    prefix: -known
- id: in_p_value
  doc: '<#> (Remove Motifs with a p-value higher than #, default: keep all)'
  type: boolean?
  inputBinding:
    prefix: -pvalue
- id: in_remove_motifs_less_default
  doc: '<#> (Remove Motifs with fold enrichment [target%/bg%] less than <#>, default:
    keep all)'
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_info
  doc: '<#> (Remove Motifs with information content less than #, default: not used)'
  type: boolean?
  inputBinding:
    prefix: -info
- id: in_remove_motifs_background_default
  doc: '<#> (Remove Motifs with background percentage less than #, default: not used)'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_mint
  doc: '<#> (Remove Motifs with less than # number of target instances, default: not
    used)'
  type: boolean?
  inputBinding:
    prefix: -minT
- id: in_site_reduce
  doc: "(If homer2 known with -siteReduce was used, motifs will be reduced by\ntheir\
    \ calculated co-occurence."
  type: boolean?
  inputBinding:
    prefix: -siteReduce
- id: in_stat
  doc: "(Stat used to compute matrix similarity.\ndefault: correlation)"
  type: string?
  inputBinding:
    prefix: -stat
- id: in_bits
  doc: (scale logos to bit content, default present nucleotide percentage)
  type: boolean?
  inputBinding:
    prefix: -bits
- id: in_rna
  doc: (output RNA motifs, use RNA motif/miRNA database for comparison)
  type: boolean?
  inputBinding:
    prefix: -rna
- id: in_norev_opp
  doc: (do not check for matches on reverse strand)
  type: boolean?
  inputBinding:
    prefix: -norevopp
- id: in_reduced_motifs
  doc: (will remove redundant motifs, output unique ones, and then quit)
  type: File?
  inputBinding:
    prefix: -reducedMotifs
- id: in_matrix
  doc: (will compute all pairwise similarity scores to matrix, then quit)
  type: File?
  inputBinding:
    prefix: -matrix
- id: in_no_facts
  doc: (leave out the humor)
  type: boolean?
  inputBinding:
    prefix: -nofacts
- id: in_dbview
  doc: (internal option )
  type: boolean?
  inputBinding:
    prefix: -dbview
- id: in_db_table
  doc: (information to use in dbview, internal option)
  type: File?
  inputBinding:
    prefix: -dbTable
- id: in_cpu
  doc: <#> (number of CPUs to use)
  type: boolean?
  inputBinding:
    prefix: -cpu
- id: in_basic
  doc: (don't compare to known motifs or print similar motifs)
  type: boolean?
  inputBinding:
    prefix: -basic
- id: in_seq_logo
  doc: (revert to using seqlogo/weblogo/ghostscript, by default uses SVG now)
  type: boolean?
  inputBinding:
    prefix: -seqlogo
- id: in_motifs_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_output_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_reduced_motifs
  doc: (will remove redundant motifs, output unique ones, and then quit)
  type: File?
  outputBinding:
    glob: $(inputs.in_reduced_motifs)
- id: out_matrix
  doc: (will compute all pairwise similarity scores to matrix, then quit)
  type: File?
  outputBinding:
    glob: $(inputs.in_matrix)
- id: out_output_directory
  doc: ''
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- compareMotifs.pl
