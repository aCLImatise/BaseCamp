class: CommandLineTool
id: rsat_get_orthologs_compara.cwl
inputs:
- id: in_mget_orthologs_v
  doc: "\e[1mGet orthologs from a query gene in a list of reference genomes\e[0m\n\
    get-orthologs-compara -v 1 -org_list compara_organisms.tab \\\n-type ortholog\
    \ -q AT5G45730.1\n\e[1mGet all orthologs from a query genome, shortening genome\
    \ names\e[0m\nget-orthologs-compara -query_org brachypodium_distachyon \\\n-ref_org\
    \ arabidopsis_thaliana -short -o brachy.thaliana.tab\n\e[1mGet paralogs for all\
    \ genes of Arabidopsis thaliana in its own genome (inparalogues)\e[0m\nget-orthologs-compara\
    \ -query_org arabidopsis_thaliana \\\n-ref_org arabidopsis_thaliana -type paralog\n\
    \e[1mGet homeologs within the wheat genome with stringent identity cut-off values\e\
    [0m\nget-orthologs-compara -query_org triticum_aestivum \\\n-ref_org triticum_aestivum\
    \ -type homeolog \\\n-ident_query 70 -ident_target 70"
  type: double
  inputBinding:
    prefix: -o
- id: in_get_orthologs_compara
  doc: "\e[1mDESCRIPTION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_ignored_dot
  doc: As for genes, the reference organisms can also be entered on the command
  type: string
  inputBinding:
    position: 0
- id: in_one_two_one_dot
  doc: Note that in Compara polyploids such as wheat are separated by
  type: long
  inputBinding:
    position: 0
- id: in_mdefinitionm_term_homoeologous
  doc: "\e[33mDefinition\e[0m: the term homoeologous, also spelled homeologous, is"
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- get-orthologs-compara
