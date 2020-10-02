class: CommandLineTool
id: references_annotator.cwl
inputs:
- id: in_in
  doc: '[string]                    Input references file (gzipped ok). Mandatory
    option.'
  type: boolean
  inputBinding:
    prefix: --in
- id: in_out
  doc: '[string]                   Output file. Mandatory option.'
  type: File
  inputBinding:
    prefix: --out
- id: in_parse_tax_on_names
  doc: 'Parse taxon names. Default value: true.'
  type: boolean
  inputBinding:
    prefix: --parseTaxonNames
- id: in_gi_two_tax_a
  doc: '[string]             GI-to-Taxonomy mapping file.'
  type: boolean
  inputBinding:
    prefix: --gi2taxa
- id: in_acc_two_tax_a
  doc: '[string]            Accession-to-Taxonomy mapping file.'
  type: boolean
  inputBinding:
    prefix: --acc2taxa
- id: in_syn_two_tax_a
  doc: '[string]            Synonyms-to-Taxonomy mapping file.'
  type: boolean
  inputBinding:
    prefix: --syn2taxa
- id: in_gi_two_eggnog
  doc: '[string]      GI-to-EGGNOG mapping file.'
  type: boolean
  inputBinding:
    prefix: --gi2eggnog
- id: in_acc_two_eggnog
  doc: '[string]     Accession-to-EGGNOG mapping file.'
  type: boolean
  inputBinding:
    prefix: --acc2eggnog
- id: in_syn_two_eggnog
  doc: '[string]     Synonyms-to-EGGNOG mapping file.'
  type: boolean
  inputBinding:
    prefix: --syn2eggnog
- id: in_tags_four_eggnog
  doc: '[string]    Tags for EGGNOG id parsing (must set to activate id parsing).'
  type: boolean
  inputBinding:
    prefix: --tags4eggnog
- id: in_gi_two_interpro_two_go
  doc: '[string]   GI-to-INTERPRO2GO mapping file.'
  type: boolean
  inputBinding:
    prefix: --gi2interpro2go
- id: in_acc_two_interpro_two_go
  doc: '[string]   Accession-to-INTERPRO2GO mapping file.'
  type: boolean
  inputBinding:
    prefix: --acc2interpro2go
- id: in_syn_two_interpro_two_go
  doc: '[string]   Synonyms-to-INTERPRO2GO mapping file.'
  type: boolean
  inputBinding:
    prefix: --syn2interpro2go
- id: in_tags_four_interpro_two_go
  doc: '[string]   Tags for INTERPRO2GO id parsing (must set to activate id parsing).'
  type: boolean
  inputBinding:
    prefix: --tags4interpro2go
- id: in_gi_two_kegg
  doc: '[string]          GI-to-KEGG mapping file.'
  type: boolean
  inputBinding:
    prefix: --gi2kegg
- id: in_acc_two_kegg
  doc: '[string]         Accession-to-KEGG mapping file.'
  type: boolean
  inputBinding:
    prefix: --acc2kegg
- id: in_syn_two_kegg
  doc: '[string]         Synonyms-to-KEGG mapping file.'
  type: boolean
  inputBinding:
    prefix: --syn2kegg
- id: in_tags_four_kegg
  doc: '[string]        Tags for KEGG id parsing (must set to activate id parsing).'
  type: boolean
  inputBinding:
    prefix: --tags4kegg
- id: in_gi_two_seed
  doc: '[string]          GI-to-SEED mapping file.'
  type: boolean
  inputBinding:
    prefix: --gi2seed
- id: in_acc_two_seed
  doc: '[string]         Accession-to-SEED mapping file.'
  type: boolean
  inputBinding:
    prefix: --acc2seed
- id: in_syn_two_seed
  doc: '[string]         Synonyms-to-SEED mapping file.'
  type: boolean
  inputBinding:
    prefix: --syn2seed
- id: in_tags_four_seed
  doc: '[string]        Tags for SEED id parsing (must set to activate id parsing).'
  type: boolean
  inputBinding:
    prefix: --tags4seed
- id: in_first_word_is_accession
  doc: 'First word in reference header is accession number. Default value: true.'
  type: boolean
  inputBinding:
    prefix: --firstWordIsAccession
- id: in_accession_tags
  doc: '[string(s)]   List of accession tags. Default value(s): gb| ref|.'
  type: boolean
  inputBinding:
    prefix: --accessionTags
- id: in_verbose
  doc: 'Echo commandline options and be verbose. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: '[string]                   Output file. Mandatory option.'
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- references-annotator
