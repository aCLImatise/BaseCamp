class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/clever_core.cwl
inputs:
- id: verbose_output_additional
  doc: '[ --verbose ]                      Be verbose: output additional  statistics
    for each variation.'
  type: boolean
  inputBinding:
    prefix: -v
- id: arg_significance_level
  doc: '[ --edge_sig_level ] arg (=0.20000000000000001) Significance level for edges
    (the lower the level, the more edges will be  present).'
  type: boolean
  inputBinding:
    prefix: -p
- id: arg_minimum_weight
  doc: '[ --min_aln_weight ] arg (=0.0016000000000000001) Minimum weight of alignment
    pairs to be considered.'
  type: boolean
  inputBinding:
    prefix: -w
- id: arg_maximum_insert
  doc: '[ --max_insert_length ] arg (=50000) Maximum insert length of alignments to  be
    considered (0=unlimited).'
  type: boolean
  inputBinding:
    prefix: -l
- id: arg_maximum_allowed
  doc: '[ --max_coverage ] arg (=200)      Maximum allowed coverage. If exceeded,  violating
    reads are ignored. The number of such ignored reads is printed to  stderr (0=unlimited).'
  type: boolean
  inputBinding:
    prefix: -c
- id: arg_write_edges
  doc: '[ --write_edges ] arg              Write edges to file of given name.'
  type: boolean
  inputBinding:
    prefix: -e
- id: arg_false_discovery
  doc: '[ --fdr ] arg (=0.10000000000000001) False discovery rate (FDR).'
  type: boolean
  inputBinding:
    prefix: -f
- id: output_cliques_ones
  doc: '[ --all ]                          Output all cliques instead of only the  significant
    ones. Cliques are not  sorted and last column (FDR) is not  computed.'
  type: boolean
  inputBinding:
    prefix: -a
- id: arg_output_reads
  doc: '[ --output_reads ] arg             Output reads belonging to at least one  significant
    clique to the given  filename (along with their assignment  to significant cliques.'
  type: boolean
  inputBinding:
    prefix: -r
- id: arg_output_coverage
  doc: '[ --output_coverage ] arg          Output the coverage with considered  insert
    segments along the chromosome  (one line per position) to the given  filename.'
  type: boolean
  inputBinding:
    prefix: -C
- id: use_separate_deviations
  doc: '[ --readgroup_aware ]              Use a separate mean and standard  deviations
    per read group. If given,  argument <distribution-file> must refer to a file containing
    this information.'
  type: boolean
  inputBinding:
    prefix: -A
- id: use_given_distribution
  doc: '[ --arbitrary_dist ]               Use a given (arbitrary) distribution  instead
    of a normal distribution as  null model (EXPERIMENTAL).'
  type: boolean
  inputBinding:
    prefix: -d
- id: arg_load_cached
  doc: '[ --cached_dist ] arg              Load cached distributions as  precomputed
    with tool  "precompute-distributions". Does not  change results, but increases
    speed.  Only applicable when using option -d.'
  type: boolean
  inputBinding:
    prefix: -D
- id: arg_bam_file
  doc: '[ --read_groups ] arg              BAM file from whose header read group  information
    is to be read, required if  options -A or -S are to be used.'
  type: boolean
  inputBinding:
    prefix: -R
- id: read_groups_come
  doc: '[ --multisample ]                  Read groups come from multiple samples  as
    indicated by SM fields in BAM  header. Evaluate cliques sample wise.'
  type: boolean
  inputBinding:
    prefix: -S
- id: distribution_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- clever-core
