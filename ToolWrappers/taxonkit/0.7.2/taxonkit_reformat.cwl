class: CommandLineTool
id: taxonkit_reformat.cwl
inputs:
- id: in_add_prefix
  doc: add prefixes for all ranks, single prefix for a rank is defined by flag --prefix-X
  type: boolean?
  inputBinding:
    prefix: --add-prefix
- id: in_delimiter
  doc: field delimiter in input lineage (default ";")
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_fill_miss_rank
  doc: fill missing rank with lineage information of the next higher rank
  type: boolean?
  inputBinding:
    prefix: --fill-miss-rank
- id: in_format
  doc: output format, placeholders of rank are needed (default "{k};{p};{c};{o};{f};{g};{s}")
  type: string?
  inputBinding:
    prefix: --format
- id: in_lineage_field
  doc: field index of lineage. data should be tab-separated (default 2)
  type: long?
  inputBinding:
    prefix: --lineage-field
- id: in_miss_rank_repl
  doc: replacement string for missing rank
  type: string?
  inputBinding:
    prefix: --miss-rank-repl
- id: in_miss_rank_repl_prefix
  doc: prefix for estimated taxon level (default "unclassified ")
  type: string?
  inputBinding:
    prefix: --miss-rank-repl-prefix
- id: in_miss_taxid_repl
  doc: replacement string for missing taxid
  type: string?
  inputBinding:
    prefix: --miss-taxid-repl
- id: in_prefix_subspecies_used
  doc: prefix for subspecies, used along with flag -P/--add-prefix (default "S__")
  type: string?
  inputBinding:
    prefix: --prefix-S
- id: in_prefix_strain_used
  doc: prefix for strain, used along with flag -P/--add-prefix (default "T__")
  type: string?
  inputBinding:
    prefix: --prefix-T
- id: in_prefix_c
  doc: prefix for class, used along with flag -P/--add-prefix (default "c__")
  type: string?
  inputBinding:
    prefix: --prefix-c
- id: in_prefix_f
  doc: prefix for family, used along with flag -P/--add-prefix (default "f__")
  type: string?
  inputBinding:
    prefix: --prefix-f
- id: in_prefix_g
  doc: prefix for genus, used along with flag -P/--add-prefix (default "g__")
  type: string?
  inputBinding:
    prefix: --prefix-g
- id: in_prefix_k
  doc: prefix for superkingdom, used along with flag -P/--add-prefix (default "k__")
  type: string?
  inputBinding:
    prefix: --prefix-k
- id: in_prefix_o
  doc: prefix for order, used along with flag -P/--add-prefix (default "o__")
  type: string?
  inputBinding:
    prefix: --prefix-o
- id: in_prefix_p
  doc: prefix for phylum, used along with flag -P/--add-prefix (default "p__")
  type: string?
  inputBinding:
    prefix: --prefix-p
- id: in_prefix_species_used
  doc: prefix for species, used along with flag -P/--add-prefix (default "s__")
  type: string?
  inputBinding:
    prefix: --prefix-s
- id: in_prefix_subspeciesstrain_used
  doc: prefix for subspecies/strain, used along with flag -P/--add-prefix (default
    "t__")
  type: string?
  inputBinding:
    prefix: --prefix-t
- id: in_pseudo_strain
  doc: use the node with lowest rank as strain name, only if which rank is lower than
    "species" and not "subpecies" nor "strain". This flag affects {t}, {S}, {T}
  type: boolean?
  inputBinding:
    prefix: --pseudo-strain
- id: in_show_lineage_tax_ids
  doc: show corresponding taxids of reformated lineage
  type: boolean?
  inputBinding:
    prefix: --show-lineage-taxids
- id: in_trim
  doc: do not fill missing rank lower than current rank
  type: boolean?
  inputBinding:
    prefix: --trim
- id: in_data_dir
  doc: directory containing nodes.dmp and names.dmp (default "/root/.taxonkit")
  type: Directory?
  inputBinding:
    prefix: --data-dir
- id: in_line_buffered
  doc: use line buffering on output, i.e., immediately writing to stdin/file for every
    line of output
  type: File?
  inputBinding:
    prefix: --line-buffered
- id: in_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  inputBinding:
    prefix: --out-file
- id: in_threads
  doc: number of CPUs. 4 is enough (default 4)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: print verbose information
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_line_buffered
  doc: use line buffering on output, i.e., immediately writing to stdin/file for every
    line of output
  type: File?
  outputBinding:
    glob: $(inputs.in_line_buffered)
- id: out_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/taxonkit:0.7.2--0
cwlVersion: v1.1
baseCommand:
- taxonkit
- reformat
