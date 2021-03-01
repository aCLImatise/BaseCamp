class: CommandLineTool
id: gem_2_sam.cwl
inputs:
- id: in_input
  doc: (default=stdin)
  type: File?
  inputBinding:
    prefix: --input
- id: in_expect_single_end_reads
  doc: (override automatic SE/PE detection)
  type: boolean?
  inputBinding:
    prefix: --expect-single-end-reads
- id: in_expect_paired_end_reads
  doc: (override automatic SE/PE detection)
  type: boolean?
  inputBinding:
    prefix: --expect-paired-end-reads
- id: in_quality_format
  doc: "'offset-33'|'offset-64'\n(mandatory when qualities are present)"
  type: boolean?
  inputBinding:
    prefix: --quality-format
- id: in_output
  doc: (default=stdout)
  type: File?
  inputBinding:
    prefix: --output
- id: in_sequence_lengths
  doc: "(add sequence lengths to SAM header.\nRequires option -I)"
  type: boolean?
  inputBinding:
    prefix: --sequence-lengths
- id: in_read_group
  doc: ', ...      (specify the RG of the reads)'
  type: long?
  inputBinding:
    prefix: --read-group
- id: in_comment
  doc: (add a comment to SAM header)
  type: string?
  inputBinding:
    prefix: --comment
- id: in_compact
  doc: "(lump all alignments on the same line,\ndefault=false)"
  type: boolean?
  inputBinding:
    prefix: --compact
- id: in_emit_correct_flags
  doc: "(emit correct flags for unpaired reads\nwhen any fragment has no primary alignment;\n\
    breaks compliance with PICARD tests)"
  type: boolean?
  inputBinding:
    prefix: --emit-correct-flags
- id: in_stranded_ness_from_consensus
  doc: ", ... ,<couple_s>\nwith <couple> := <donor_consensus>+<acceptor_consensus>\n\
    (list of couples of donor/acceptor\nsplice site consensus sequences,\ndefault=GT+AG.\n\
    Requires option -I)"
  type: long?
  inputBinding:
    prefix: --strandedness-from-consensus
- id: in_max_memory
  doc: (default=1000000000)
  type: long?
  inputBinding:
    prefix: --max-memory
- id: in_threads
  doc: (default=1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_show_license
  doc: (show license and exit)
  type: boolean?
  inputBinding:
    prefix: --show-license
- id: in_gem_two_sam
  doc: -I|--index <file>                (mandatory with options -l or -s)
  type: long
  inputBinding:
    position: 0
- id: in_with
  doc: "<field> := <name> '=' <value>\n<name>  := 'ID' | 'CN' | 'DS' | 'DT' | 'FO'\
    \ | 'KS'\n'LB' | 'PG' | 'PI' | 'PL' | 'PU' | 'SM'\n(ID and SM must not be empty,\n\
    default: ID='0',        PG='GEM',\nPL='ILLUMINA', SM='0')\n<value> := <string>\
    \     (see SAM specification; no check performed!)"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gem2:20200110--0
cwlVersion: v1.1
baseCommand:
- gem-2-sam
