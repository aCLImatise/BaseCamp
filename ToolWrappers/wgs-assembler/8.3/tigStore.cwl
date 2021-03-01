class: CommandLineTool
id: tigStore.cwl
inputs:
- id: in_path_gatekeeper_store
  doc: Path to the gatekeeper store
  type: File?
  inputBinding:
    prefix: -g
- id: in_path_tigstore_version
  doc: <v>       Path to the tigStore, and version to use
  type: File?
  inputBinding:
    prefix: -t
- id: in_up
  doc: '...limit to unitigs in partition <p>'
  type: string?
  inputBinding:
    prefix: -up
- id: in_cp
  doc: '...limit to contigs in partition <p>'
  type: string?
  inputBinding:
    prefix: -cp
- id: in_dump_something_store
  doc: Dump something about the store
  type: string?
  inputBinding:
    prefix: -D
- id: in_unitig_dump_dump
  doc: '[-id]            Unitig to dump (for -d option); if A-B, dump tigs from id
    A to id B, inclusive'
  type: string?
  inputBinding:
    prefix: -u
- id: in_contig_dump_dump
  doc: '[-id]            Contig to dump (for -d option); if A-B, dump tigs from id
    A to id B, inclusive'
  type: string?
  inputBinding:
    prefix: -c
- id: in_dump_unitigs_d
  doc: Dump ALL unitigs (for -d option)
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_dump_contigs_d
  doc: Dump ALL contigs (for -d option)
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_n_reads
  doc: max       Dump tigs with between min and max reads (inclusive)
  type: long?
  inputBinding:
    prefix: -nreads
- id: in_dump_something_multialign
  doc: Dump something about a multialign (-c or -u) in the store
  type: string?
  inputBinding:
    prefix: -d
- id: in_change_properties_multialigns
  doc: Change properties of multialigns
  type: File?
  inputBinding:
    prefix: -E
- id: in_construct_new_store
  doc: "Construct a new store with unitigs in 'layout-file'.  Store versions\nbefore\
    \ that specified on the '-t' option are created but are empty."
  type: File?
  inputBinding:
    prefix: -B
- id: in_replace_multialign_i
  doc: "Replace a multialign with this one (type and id are from the layout)\nThe\
    \ multialign is replaced in version <v> from -t."
  type: string?
  inputBinding:
    prefix: -R
- id: in_replace_multialign_next
  doc: "Replace a multialign in the next version of the store.  This option is\nneeded\
    \ if the version of the store to add a multialign does not exist.\nThe multialign\
    \ is replaced in version <v>+1 from -t."
  type: boolean?
  inputBinding:
    prefix: -N
- id: in_compress
  doc: "Move tigs from earlier versions into the specified version.  This removes\n\
    historical versions of unitigs/contigs, and can save tremendous storage space,\n\
    but makes it impossible to back up the assembly past the specified versions"
  type: boolean?
  inputBinding:
    prefix: -compress
- id: in_width_of_page
  doc: Width of the page.
  type: string?
  inputBinding:
    prefix: -w
- id: in_spacing_reads_same
  doc: Spacing between reads on the same line.
  type: string?
  inputBinding:
    prefix: -s
- id: in_output_files_written
  doc: "Output files will be written to 'prefix.*' in the current directory.\n(defaults\
    \ to 'tigStore' (the -t option) if not set.)"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_unit_ig_list
  doc: '...a list of the unitigs in the store'
  type: string
  inputBinding:
    position: 0
- id: in_contig_list
  doc: '...a list of the contigs in the store'
  type: string
  inputBinding:
    position: 1
- id: in_frags
  doc: '...a list of fragments'
  type: string
  inputBinding:
    position: 4
- id: in_unit_igs
  doc: '...a list of unitigs'
  type: string
  inputBinding:
    position: 5
- id: in_consensus_gapped
  doc: '...the consensus sequence, with gaps as indicated in the multialignment'
  type: string
  inputBinding:
    position: 0
- id: in_layout
  doc: '...the layout'
  type: string
  inputBinding:
    position: 1
- id: in_multi_align
  doc: '...the full multialignment'
  type: string
  inputBinding:
    position: 2
- id: in_mate_pair
  doc: '...an analysis of the mate pairs'
  type: string
  inputBinding:
    position: 3
- id: in_sizes
  doc: '...an analysis of sizes of the tigs'
  type: string
  inputBinding:
    position: 4
- id: in_coverage
  doc: '...an analysis of read coverage of the tigs'
  type: string
  inputBinding:
    position: 5
- id: in_overlap
  doc: '...an analysis of read overlaps in the tigs'
  type: string
  inputBinding:
    position: 6
- id: in_f_map
  doc: '...a map from fragment IID to unitig IID'
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_files_written
  doc: "Output files will be written to 'prefix.*' in the current directory.\n(defaults\
    \ to 'tigStore' (the -t option) if not set.)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_files_written)
hints: []
cwlVersion: v1.1
baseCommand:
- tigStore
