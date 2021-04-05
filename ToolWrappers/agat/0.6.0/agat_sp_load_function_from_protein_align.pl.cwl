class: CommandLineTool
id: agat_sp_load_function_from_protein_align.pl.cwl
inputs:
- id: in_annotation
  doc: Input gtf/gff file of an annotation.
  type: File?
  inputBinding:
    prefix: --annotation
- id: in_pg_ff
  doc: Input gff file of aligned proteins.
  type: boolean?
  inputBinding:
    prefix: -pgff
- id: in_p_fast_a
  doc: "protein fasta file where the extra information will be\nretrieved for each\
    \ aligned protein."
  type: File?
  inputBinding:
    prefix: -pfasta
- id: in_method
  doc: "Rule to apply to lift function when a protein map properly. 1)\nreplace =>\
    \ replace or add the product and Name attribute's\nvalues. 2) complete => add\
    \ the product and Name attribute's\nvalues only if doesn't exist. 3) add => add\
    \ the lfp_product and\nlfp_name attributes with the corresponding values"
  type: long?
  inputBinding:
    prefix: --method
- id: in_threshold
  doc: "Gene mapping percentage over which a gene must be reported. By\ndefault the\
    \ value is 50."
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_compute_overlap_score
  doc: "Compute the overlap score based on the whole annotation\nsequence. By default\
    \ we use only the coding sequence part."
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_pe
  doc: "Protein existence value. We will take the best overlap score\nprotein according\
    \ to the PE expected 1. Experimental evidence at\nprotein level 2. Experimental\
    \ evidence at transcript level 3.\nProtein inferred from homology 4. Protein predicted\
    \ 5. Protein\nuncertain"
  type: boolean?
  inputBinding:
    prefix: --pe
- id: in_test
  doc: "Test to apply (> < = >= <=). If you us one of these two\ncharacter >, <, please\
    \ don't forget to quote you parameter liket\nthat \"<=\". Else your terminal will\
    \ complain."
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_sp
  doc: "Species, between the set of the best protein aligned we try\nfirst to take\
    \ the one that follow the species prioritization\ndefined. There is a default\
    \ one, but you can define you own\n(quoted and coma separated value)like that:\
    \ \"mus Musculus, Homo\nSapiens\" from the most important to the less important.\
    \ In that\ncase Mus will be taken first even if a better overlaping one\nexist\
    \ for human. If none of them is found we take anyway the\nbest overlapping one."
  type: boolean?
  inputBinding:
    prefix: --sp
- id: in_priority
  doc: "By default the priority is PE test before species test when both\nare applied.\
    \ You can flip these two test by activating this\noption like this: -p species"
  type: string?
  inputBinding:
    prefix: --priority
- id: in_be_verbose
  doc: Be verbose.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_output
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  inputBinding:
    prefix: --output
- id: in_agat_sp_load_function_from_protein_align_do_tpl
  doc: 'Description:'
  type: string
  inputBinding:
    position: 0
- id: in_option_dot
  doc: "Usage:\nagat_sp_load_function_from_protein_align.pl -a annotation.gff --pgff\
    \ protein.gff --pfasta protein.fasta [ -o outfile ]\nagat_sp_load_function_from_protein_align.pl\
    \ --help"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output GFF file. If no output file is specified, the output will\nbe written\
    \ to STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/agat:0.6.0--pl526r35_0
cwlVersion: v1.1
baseCommand:
- agat_sp_load_function_from_protein_align.pl
