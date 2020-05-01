#!/usr/bin/env cwl-runner

baseCommand:
- clever-core
class: CommandLineTool
cwlVersion: v1.0
id: clever-core
inputs:
- doc: ''
  id: distribution_file
  inputBinding:
    position: 0
  type: string
- doc: '[ --verbose ]                      Be verbose: output additional  statistics
    for each variation.'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: '[ --edge_sig_level ] arg (=0.20000000000000001) Significance level for edges
    (the lower the level, the more edges will be  present).'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --min_aln_weight ] arg (=0.0016000000000000001) Minimum weight of alignment
    pairs to be considered.'
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: '[ --max_insert_length ] arg (=50000) Maximum insert length of alignments to  be
    considered (0=unlimited).'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '[ --max_coverage ] arg (=200)      Maximum allowed coverage. If exceeded,  violating
    reads are ignored. The number of such ignored reads is printed to  stderr (0=unlimited).'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: '[ --write_edges ] arg              Write edges to file of given name.'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: '[ --fdr ] arg (=0.10000000000000001) False discovery rate (FDR).'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: '[ --all ]                          Output all cliques instead of only the  significant
    ones. Cliques are not  sorted and last column (FDR) is not  computed.'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: '[ --output_reads ] arg             Output reads belonging to at least one  significant
    clique to the given  filename (along with their assignment  to significant cliques.'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '[ --output_coverage ] arg          Output the coverage with considered  insert
    segments along the chromosome  (one line per position) to the given  filename.'
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: '[ --readgroup_aware ]              Use a separate mean and standard  deviations
    per read group. If given,  argument <distribution-file> must refer to a file containing
    this information.'
  id: a
  inputBinding:
    prefix: -A
  type: boolean
- doc: '[ --arbitrary_dist ]               Use a given (arbitrary) distribution  instead
    of a normal distribution as  null model (EXPERIMENTAL).'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '[ --cached_dist ] arg              Load cached distributions as  precomputed
    with tool  "precompute-distributions". Does not  change results, but increases
    speed.  Only applicable when using option -d.'
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: '[ --read_groups ] arg              BAM file from whose header read group  information
    is to be read, required if  options -A or -S are to be used.'
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: '[ --multisample ]                  Read groups come from multiple samples  as
    indicated by SM fields in BAM  header. Evaluate cliques sample wise.'
  id: s
  inputBinding:
    prefix: -S
  type: boolean
