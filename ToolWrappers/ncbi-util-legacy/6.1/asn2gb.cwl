class: CommandLineTool
id: asn2gb.cwl
inputs:
- id: in_input_file_name
  doc: "Input File Name [File In]\ndefault = stdin"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_output_file_name
  doc: "Output File Name [File Out]\ndefault = stdout"
  type: File?
  inputBinding:
    prefix: -o
- id: in_format_b_genbank
  doc: "Format (b GenBank, e EMBL, p GenPept, t Feature Table, x INSDSet) [String]\n\
    default = b"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_mode_r_release
  doc: "Mode (r Release, e Entrez, s Sequin, d Dump) [String]\ndefault = s"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_style_normal_segment
  doc: "Style (n Normal, s Segment, m Master, c Contig) [String]\ndefault = n"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_bit_flags_xml
  doc: "Bit Flags (1 HTML, 2 XML, 4 ContigFeats, 8 ContigSrcs, 16 FarTransl) [Integer]\n\
    default = 0"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_custom_flags_hidefeats
  doc: "Custom Flags (4 HideFeats, 1792 HideRefs, 8192 HideSources, 262144 HideTranslation)\
    \ [Integer]\ndefault = 0"
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_asn_typesingle_record
  doc: "ASN.1 Type\nSingle Record: a Any, e Seq-entry, b Bioseq, s Bioseq-set, m Seq-submit,\
    \ q Catenated\nRelease File: t Batch Bioseq-set, u Batch Seq-submit"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_batch_report_sequinrelease
  doc: "Batch\n1 Report\n2 Sequin/Release\n3 asn2gb SSEC/nocleanup\n4 asn2flat BSEC/nocleanup\n\
    5 asn2gb/asn2flat\n6 asn2gb NEW dbxref/OLD dbxref\n7 oldasn2gb/newasn2gb [Integer]\n\
    default = 0\nrange from 0 to 7"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_input_file_binary
  doc: "Input File is Binary [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_batch_file_compressed
  doc: "Batch File is Compressed [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_propagate_top_descriptors
  doc: "Propagate Top Descriptors [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_log_file_optional
  doc: Log file [File Out]  Optional
  type: File?
  inputBinding:
    prefix: -l
- id: in_remote_fetching_optionaldefault
  doc: "Remote Fetching [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_accession_fetch_accessionretcodeflags
  doc: Accession to Fetch (or Accession,retcode,flags where flags -1 fetches external
    features) [String]  Optional
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_remote_annotation_fetch
  doc: "Remote Annotation Fetch Test (use -A Accession,0,-1 instead) [T/F]  Optional\n\
    default = F"
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_ffdiff_executable_optionaldefault
  doc: "Ffdiff Executable [File In]  Optional\ndefault = /netopt/genbank/subtool/bin/ffdiff"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_asnflat_executable_optionaldefault
  doc: "Asn2Flat Executable [File In]  Optional\ndefault = asn2flat"
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_seqloc_from_optionaldefault
  doc: "SeqLoc From [Integer]  Optional\ndefault = 0"
  type: boolean?
  inputBinding:
    prefix: -j
- id: in_seqloc_to_optionaldefault
  doc: "SeqLoc To [Integer]  Optional\ndefault = 0"
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_seqloc_minus_strand
  doc: "SeqLoc Minus Strand [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_feature_itemid_optionaldefault
  doc: "Feature itemID [Integer]  Optional\ndefault = 0\n"
  type: boolean?
  inputBinding:
    prefix: -y
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: "Output File Name [File Out]\ndefault = stdout"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
- id: out_log_file_optional
  doc: Log file [File Out]  Optional
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file_optional)
hints: []
cwlVersion: v1.1
baseCommand:
- asn2gb
