class: CommandLineTool
id: metabin.cwl
inputs:
- id: in_input
  doc: TSV file name
  type: File?
  inputBinding:
    prefix: --input
- id: in_out
  doc: output file prefix
  type: File?
  inputBinding:
    prefix: --out
- id: in_species
  doc: species %id threshold [default= 99]
  type: long?
  inputBinding:
    prefix: --Species
- id: in_genus
  doc: genus %id threshold [default= 97]
  type: long?
  inputBinding:
    prefix: --Genus
- id: in_family
  doc: family %id threshold [default= 95]
  type: long?
  inputBinding:
    prefix: --Family
- id: in_above_f
  doc: above family %id threshold [default= 90]
  type: long?
  inputBinding:
    prefix: --AboveF
- id: in_db
  doc: directory containing the taxonomy db (nodes.dmp and names.dmp) [default= /usr/local/bin/../db/]
  type: Directory?
  inputBinding:
    prefix: --db
- id: in_species_neg_filter
  doc: negative filter (file with one word per line) [default= NULL]
  type: File?
  inputBinding:
    prefix: --SpeciesNegFilter
- id: in_species_bl
  doc: species blacklist (file with one taxid per line) [default= NULL]
  type: File?
  inputBinding:
    prefix: --SpeciesBL
- id: in_genus_bl
  doc: genera blacklist (file with one taxid per line) [default= NULL]
  type: File?
  inputBinding:
    prefix: --GenusBL
- id: in_family_bl
  doc: families blacklist (file with one taxid per line) [default= NULL]
  type: File?
  inputBinding:
    prefix: --FamilyBL
- id: in_filter_file
  doc: file name with the entries from the input to exclude (on entry per line)  [default=
    NULL]
  type: File?
  inputBinding:
    prefix: --FilterFile
- id: in_filter_col
  doc: "NAME\nColumn name to look for the values found the the file provided in the\
    \ --Filter parameter  [default= sseqid]"
  type: File?
  inputBinding:
    prefix: --FilterCol
- id: in_rm_predicted
  doc: Where to look (column name) for in-silico 'predicted' entries (XM_,XR_, and
    XP_). If no column is given then  the filter is not applied.  [default= NULL]
  type: string?
  inputBinding:
    prefix: --rm_predicted
- id: in_to_paf
  doc: above family? [default= 100]
  type: long?
  inputBinding:
    prefix: --TopAF
- id: in_quiet
  doc: enable quiet mode (less messages are printed to stdout)
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_no_mbk
  doc: 'Do not use mbk: codes in the output file to explain why a sequence was not
    binned at a given level (NA is used throughout)'
  type: File?
  inputBinding:
    prefix: --no_mbk
- id: in_sp_discard_sp
  doc: Discard species with sp. in the name
  type: boolean?
  inputBinding:
    prefix: --sp_discard_sp
- id: in_sp_discard_mtt_wow
  doc: Discard species with more than two words
  type: boolean?
  inputBinding:
    prefix: --sp_discard_mt2w
- id: in_sp_discard_num
  doc: Discard species with numbers
  type: boolean?
  inputBinding:
    prefix: --sp_discard_num
- id: in_minimal_cols
  doc: Include only the seqid and lineage information in the output table [FALSE]
  type: boolean?
  inputBinding:
    prefix: --minimal_cols
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: output file prefix
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_no_mbk
  doc: 'Do not use mbk: codes in the output file to explain why a sequence was not
    binned at a given level (NA is used throughout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_no_mbk)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/metabinkit:0.2.2--r40hed695b0_1
cwlVersion: v1.1
baseCommand:
- metabin
