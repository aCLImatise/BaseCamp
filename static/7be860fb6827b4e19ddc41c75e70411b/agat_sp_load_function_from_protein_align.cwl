class: CommandLineTool
id: agat_sp_load_function_from_protein_align.pl.cwl
inputs:
- id: method
  doc: Rule to apply to lift function when a protein map properly. 1) replace => replace
    or add the product and Name attribute's values. 2) complete => add the product
    and Name attribute's values only if doesn't exist. 3) add => add the lfp_product
    and lfp_name attributes with the corresponding values
  type: string
  inputBinding:
    prefix: --method
- id: threshold
  doc: Gene mapping percentage over which a gene must be reported. By default the
    value is 50.
  type: string
  inputBinding:
    prefix: --threshold
- id: w
  doc: Compute the overlap score based on the whole annotation sequence. By default
    we use only the coding sequence part.
  type: boolean
  inputBinding:
    prefix: -w
- id: pe
  doc: Protein existence value. We will take the best overlap score protein according
    to the PE expected 1. Experimental evidence at protein level 2. Experimental evidence
    at transcript level 3. Protein inferred from homology 4. Protein predicted 5.
    Protein uncertain
  type: boolean
  inputBinding:
    prefix: --pe
- id: test
  doc: Test to apply (> < = >= <=). If you us one of these two character >, <, please
    don't forget to quote you parameter liket that "<=". Else your terminal will complain.
  type: boolean
  inputBinding:
    prefix: --test
- id: sp
  doc: 'Species, between the set of the best protein aligned we try first to take
    the one that follow the species prioritization defined. There is a default one,
    but you can define you own (quoted and coma separated value)like that: "mus Musculus,
    Homo Sapiens" from the most important to the less important. In that case Mus
    will be taken first even if a better overlaping one exist for human. If none of
    them is found we take anyway the best overlapping one.'
  type: boolean
  inputBinding:
    prefix: --sp
- id: priority
  doc: 'By default the priority is PE test before species test when both are applied.
    You can flip these two test by activating this option like this: -p species'
  type: string
  inputBinding:
    prefix: --priority
- id: v
  doc: Be verbose.
  type: boolean
  inputBinding:
    prefix: -v
- id: o
  doc: ', --output or --out Output GFF file. If no output file is specified, the output
    will be written to STDOUT.'
  type: boolean
  inputBinding:
    prefix: -o
- id: a
  doc: description,
  type: string
  inputBinding:
    prefix: '- a'
- id: as
  doc: relevant information as possible,
  type: string
  inputBinding:
    prefix: '- as'
- id: the
  doc: used,
  type: string
  inputBinding:
    prefix: '- the'
- id: a
  doc: sample,
  type: string
  inputBinding:
    prefix: '- a'
- id: an
  doc: of the expected behaviour that is not occurring.
  type: string
  inputBinding:
    prefix: '- an'
outputs: []
cwlVersion: v1.1
baseCommand:
- agat_sp_load_function_from_protein_align.pl
