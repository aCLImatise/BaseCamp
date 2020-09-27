class: CommandLineTool
id: fa2htgs.cwl
inputs:
- id: in_filename_fasta_input
  doc: "Filename for fasta input [File In]  Optional\ndefault = stdin"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_filename_seqsubmit_template
  doc: "Filename for Seq-submit template [File In]\ndefault = template.sub"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_filename_asn_output
  doc: "Filename for asn.1 output [File Out]  Optional\ndefault = stdout"
  type: File
  inputBinding:
    prefix: -o
- id: in_log_errors_file
  doc: 'Log errors to file named: [File Out]  Optional'
  type: File
  inputBinding:
    prefix: -e
- id: in_organism_name_optionaldefault
  doc: "Organism name? [String]  Optional\ndefault = Homo sapiens"
  type: boolean
  inputBinding:
    prefix: -n
- id: in_sequence_name
  doc: Sequence name? [String]
  type: boolean
  inputBinding:
    prefix: -s
- id: in_length_sequence_bp
  doc: "length of sequence in bp? [Integer]\ndefault = 0"
  type: boolean
  inputBinding:
    prefix: -l
- id: in_genome_center_tag
  doc: Genome Center tag? [String]
  type: boolean
  inputBinding:
    prefix: -g
- id: in_htgs_phase_default
  doc: "HTGS phase? [Integer]\ndefault = 1\nrange from 0 to 3"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_genbank_accession_optional
  doc: GenBank accession (if an update) [String]  Optional
  type: boolean
  inputBinding:
    prefix: -a
- id: in_remark_update_optional
  doc: Remark for update? [String]  Optional
  type: boolean
  inputBinding:
    prefix: -r
- id: in_clone_name_optional
  doc: Clone name? [String]  Optional
  type: boolean
  inputBinding:
    prefix: -c
- id: in_title_sequence_optional
  doc: Title for sequence? [String]  Optional
  type: boolean
  inputBinding:
    prefix: -d
- id: in_take_comment_template
  doc: "Take comment from template ? [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -m
- id: in_take_biosource_template
  doc: "Take biosource from template ? [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -u
- id: in_secondary_accession_number
  doc: Secondary accession number, separate by commas if multiple, s.t. U10000,L11000
    [String]  Optional
  type: boolean
  inputBinding:
    prefix: -x
- id: in_clone_library_name
  doc: Clone library name? [String]  Optional
  type: boolean
  inputBinding:
    prefix: -C
- id: in_map__optional
  doc: Map? [String]  Optional
  type: boolean
  inputBinding:
    prefix: -M
- id: in_filename_comment_optional
  doc: 'Filename for the comment: [File In]  Optional'
  type: boolean
  inputBinding:
    prefix: -O
- id: in_filename_phrap_input
  doc: Filename for phrap input [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -T
- id: in_contigs_use_separate
  doc: Contigs to use, separate by commas if multiple [String]  Optional
  type: boolean
  inputBinding:
    prefix: -P
- id: in_filename_accession_list
  doc: Filename for accession list input [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -A
- id: in_coordinates_resulting_sequence
  doc: "Coordinates are on the resulting sequence ? [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -X
- id: in_htgsdraft_sequence_optionaldefault
  doc: "HTGS_DRAFT sequence? [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -D
- id: in_strain_name_optional
  doc: Strain name? [String]  Optional
  type: boolean
  inputBinding:
    prefix: -S
- id: in_gap_length_default
  doc: "Gap length [Integer]\ndefault = 100\nrange from 0 to 1000000000"
  type: boolean
  inputBinding:
    prefix: -b
- id: in_annotate_assemblyfragments_optionaldefault
  doc: "Annotate assembly_fragments [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -N
- id: in_sp_clone_eg
  doc: SP6 clone (e.g., Contig1,left) [String]  Optional
  type: boolean
  inputBinding:
    prefix: '-6'
- id: in_t_clone_eg
  doc: T7 clone (e.g., Contig2,right) [String]  Optional
  type: boolean
  inputBinding:
    prefix: '-7'
- id: in_filename_phrap_contig
  doc: Filename for phrap contig order [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -L
- id: in_htgsfulltop_keyword_optionaldefault
  doc: "htgs_fulltop keyword [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_htgsactivefin_keyword_optionaldefault
  doc: "htgs_activefin keyword [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -v
- id: in_htgscancelled_keyword_optionaldefault
  doc: "htgs_cancelled keyword [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -q
- id: in_filename_quality_scores
  doc: Filename for quality scores [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_whole_genome_shotgun
  doc: "Whole Genome Shotgun? [T/F]  Optional\ndefault = F"
  type: boolean
  inputBinding:
    prefix: -w
- id: in_arbitrary_keyword_optional
  doc: Arbitrary Keyword [String]  Optional
  type: boolean
  inputBinding:
    prefix: -k
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_filename_asn_output
  doc: "Filename for asn.1 output [File Out]  Optional\ndefault = stdout"
  type: File
  outputBinding:
    glob: $(inputs.in_filename_asn_output)
- id: out_log_errors_file
  doc: 'Log errors to file named: [File Out]  Optional'
  type: File
  outputBinding:
    glob: $(inputs.in_log_errors_file)
cwlVersion: v1.1
baseCommand:
- fa2htgs
