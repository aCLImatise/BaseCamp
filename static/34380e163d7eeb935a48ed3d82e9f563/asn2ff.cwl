class: CommandLineTool
id: asn2ff.cwl
inputs:
- id: in_filename_input_optionaldefault
  doc: "Filename for asn.1 input [File In]  Optional\ndefault = stdin"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_input_seqentry_optionaldefault
  doc: "Input is a Seq-entry [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_input_asnfile_binary
  doc: "Input asnfile in binary mode [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_output_filename_optionaldefault
  doc: "Output Filename [File Out]  Optional\ndefault = stdout"
  type: File?
  inputBinding:
    prefix: -o
- id: in_log_errors_file
  doc: 'Log errors to file named: [File Out]  Optional'
  type: File?
  inputBinding:
    prefix: -l
- id: in_output_format_b
  doc: "Output Format?: b for GenBank, p for GenPept, e for EMBL, s for PseudoEMBL,\
    \ x for   GenBankSelect, z for EMBLPEPT [String]  Optional\ndefault = b"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_output_mode_r
  doc: "Output mode?: r for release, d for dump, s for Sequin, c for Chromoscope,\
    \ k for dir-sub-debug, l for dir-sub, e for revise, p for partial report [String]\
    \  Optional\ndefault = r"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_input_seqsubmit_optionaldefault
  doc: "Input is a Seq-submit [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_show_numbers_optionaldefault
  doc: "Show gi numbers? [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_nonstrict_genebinding_optionaldefault
  doc: "Non-Strict gene_binding [T/F]  Optional\ndefault = T"
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_show_error_messages
  doc: "Show error messages [T/F]  Optional\ndefault = T"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_show_verbose_text
  doc: "Show verbose message text [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_use_html_format
  doc: "Use HTML output format? [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_output_only_
  doc: "Output is one top bioseq only [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_only_in_view
  doc: "Output is one top bioseq only in genome view [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -G
- id: in_output_map_bioseqs
  doc: "Output is map bioseqs only  [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_output_error_logfile
  doc: "Output error logfile [File Out]  Optional\ndefault = stderr"
  type: File?
  inputBinding:
    prefix: -r
- id: in_show_gene_features
  doc: "Show new gene features? [T/F]  Optional\ndefault = T"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_new_algorithm_orgnames
  doc: "New algorithm for orgnames? [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_print_help_format
  doc: "Print help format only? [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_from_show_region_optionaldefault
  doc: "From to show a region [Real]  Optional\ndefault = 0"
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_to_show_region_optionaldefault
  doc: "To to show a region [Real]  Optional\ndefault = 0"
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_complex_sets_physetmutset
  doc: "Complex sets (phy-set,mut-set, pop-set)? [T/F]  Optional\ndefault = T"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_use_seqmgr_indexing
  doc: "Use SeqMgr indexing? [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_use_version_optionaldefault
  doc: "Use VERSION? [T/F]  Optional\ndefault = T"
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_show_bankit_comments
  doc: "Show Bankit comments? [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_genbank_release_optionaldefault
  doc: "For GenBank Release? [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_new_locus_line
  doc: "New LOCUS line format? [T/F]  Optional\ndefault = T\n"
  type: boolean?
  inputBinding:
    prefix: -L
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename_optionaldefault
  doc: "Output Filename [File Out]  Optional\ndefault = stdout"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename_optionaldefault)
- id: out_log_errors_file
  doc: 'Log errors to file named: [File Out]  Optional'
  type: File?
  outputBinding:
    glob: $(inputs.in_log_errors_file)
- id: out_output_error_logfile
  doc: "Output error logfile [File Out]  Optional\ndefault = stderr"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_error_logfile)
hints: []
cwlVersion: v1.1
baseCommand:
- asn2ff
