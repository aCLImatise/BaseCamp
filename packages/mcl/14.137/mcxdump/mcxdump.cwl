class: CommandLineTool
id: mcxdump.cwl
inputs:
- id: in_imx
  doc: read matrix from file <fname>
  type: File
  inputBinding:
    prefix: -imx
- id: in_icl
  doc: read clustering from file <fname>, dump lines
  type: File
  inputBinding:
    prefix: -icl
- id: in_imx_cat
  doc: dump multiple matrices encoded in cat file
  type: File
  inputBinding:
    prefix: -imx-cat
- id: in_imx_tree
  doc: stackify and dump multiple matrices encoded in cone file
  type: File
  inputBinding:
    prefix: -imx-tree
- id: in_output_file_fname
  doc: output to file <fname> (- for STDOUT)
  type: File
  inputBinding:
    prefix: -o
- id: in_tab
  doc: read tab file from <fname> for all identifiers
  type: File
  inputBinding:
    prefix: -tab
- id: in_tabc
  doc: read tab file from <fname> for column domain identifiers
  type: File
  inputBinding:
    prefix: -tabc
- id: in_tab_r
  doc: read tab file from <fname> for row domain identifiers
  type: File
  inputBinding:
    prefix: -tabr
- id: in_lazy_tab
  doc: tab file(s) may mismatch matrix domain(s)
  type: boolean
  inputBinding:
    prefix: --lazy-tab
- id: in_no_values
  doc: do not emit values
  type: boolean
  inputBinding:
    prefix: --no-values
- id: in_prefix_c
  doc: prefix column indices with <string>
  type: string
  inputBinding:
    prefix: -prefixc
- id: in_no_loops
  doc: do not include self in listing
  type: boolean
  inputBinding:
    prefix: --no-loops
- id: in_omit_empty
  doc: skip columns with no entries
  type: boolean
  inputBinding:
    prefix: --omit-empty
- id: in_sort
  doc: '{ascending,descending} sort mode'
  type: long
  inputBinding:
    prefix: -sort
- id: in_force_loops
  doc: force self in listing
  type: boolean
  inputBinding:
    prefix: --force-loops
- id: in_cat_max
  doc: only do the first <num> files
  type: long
  inputBinding:
    prefix: -cat-max
- id: in_split_stem
  doc: split multiple matrices over different files
  type: File
  inputBinding:
    prefix: -split-stem
- id: in_write_matrix
  doc: dump mcl matrix
  type: boolean
  inputBinding:
    prefix: --write-matrix
- id: in_transpose
  doc: work with the transposed matrix
  type: boolean
  inputBinding:
    prefix: --transpose
- id: in_tf
  doc: <func(arg)[, func(arg)]*>     apply unary transformations to input matrix values
  type: boolean
  inputBinding:
    prefix: -tf
- id: in_dump_pairs
  doc: dump a single column/row matrix pair per output line
  type: boolean
  inputBinding:
    prefix: --dump-pairs
- id: in_dump_upper
  doc: dump upper part of the matrix excluding diagonal
  type: boolean
  inputBinding:
    prefix: --dump-upper
- id: in_dump_upper_i
  doc: dump upper part of the matrix including diagonal
  type: boolean
  inputBinding:
    prefix: --dump-upperi
- id: in_dump_lower
  doc: dump lower part of the matrix excluding diagonal
  type: boolean
  inputBinding:
    prefix: --dump-lower
- id: in_dump_lower_i
  doc: dump lower part of the matrix including diagonal
  type: boolean
  inputBinding:
    prefix: --dump-loweri
- id: in_dump_lines
  doc: join all row entries on a single line
  type: boolean
  inputBinding:
    prefix: --dump-lines
- id: in_dump_r_lines
  doc: as --dump-lines, do not emit the leading column identifier
  type: boolean
  inputBinding:
    prefix: --dump-rlines
- id: in_dump_v_lines
  doc: join all row entries on a single line, print column value
  type: boolean
  inputBinding:
    prefix: --dump-vlines
- id: in_dump_s_if
  doc: dump SIF format with second field set to <relationship-type>
  type: string
  inputBinding:
    prefix: -dump-sif
- id: in_dump_s_if_x
  doc: as -dump-sif, output extended label:weight format
  type: string
  inputBinding:
    prefix: -dump-sifx
- id: in_newick
  doc: write newick string
  type: boolean
  inputBinding:
    prefix: --newick
- id: in_dump_table
  doc: dump complete matrix including zeroes
  type: boolean
  inputBinding:
    prefix: --dump-table
- id: in_table_n_fields
  doc: limit table dump to first <num> fields
  type: long
  inputBinding:
    prefix: -table-nfields
- id: in_table_nlines
  doc: limit table dump to first <num> lines
  type: long
  inputBinding:
    prefix: -table-nlines
- id: in_dump_lead_off
  doc: do not dump lead node (with --dump-table)
  type: boolean
  inputBinding:
    prefix: --dump-lead-off
- id: in_digits
  doc: precision to use in interchange format
  type: long
  inputBinding:
    prefix: -digits
- id: in_write_tabc
  doc: write tab file on column domain
  type: boolean
  inputBinding:
    prefix: --write-tabc
- id: in_write_tab_r
  doc: write tab file on row domain
  type: boolean
  inputBinding:
    prefix: --write-tabr
- id: in_dump_do_mr
  doc: dump the row domain
  type: boolean
  inputBinding:
    prefix: --dump-domr
- id: in_dump_do_mc
  doc: dump the col domain
  type: boolean
  inputBinding:
    prefix: --dump-domc
- id: in_skeleton
  doc: create empty matrix, honour domains
  type: boolean
  inputBinding:
    prefix: --skeleton
- id: in_sep_lead
  doc: use <string> to separate col from row list (default tab)
  type: string
  inputBinding:
    prefix: -sep-lead
- id: in_sep_field
  doc: use <string> to separate row indices (default tab)
  type: string
  inputBinding:
    prefix: -sep-field
- id: in_sep_value
  doc: use <string> as node/value separator (default colon)
  type: string
  inputBinding:
    prefix: -sep-value
- id: in_sep_cat
  doc: use <string> to separate cat matrix dumps (cf -imx-cat)
  type: string
  inputBinding:
    prefix: -sep-cat
- id: in_help
  doc: print this help
  type: boolean
  inputBinding:
    prefix: --help
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_fname
  doc: output to file <fname> (- for STDOUT)
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_fname)
cwlVersion: v1.1
baseCommand:
- mcxdump
