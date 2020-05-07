class: CommandLineTool
id: DefineClones.py.cwl
inputs:
- id: clone_pass
  doc: database with assigned clonal group numbers.
  type: string
  inputBinding:
    position: 0
- id: clone_fail
  doc: database with records failing clonal grouping.
  type: string
  inputBinding:
    position: 1
- id: d
  doc: 'A list of tab delimited database files. (default: None)'
  type: string[]
  inputBinding:
    prefix: -d
- id: o
  doc: 'Explicit output file name. Note, this argument cannot be used with the --failed,
    --outdir, or --outname arguments. If unspecified, then the output filename will
    be based on the input filename(s). (default: None)'
  type: string[]
  inputBinding:
    prefix: -o
- id: outdir
  doc: 'Specify to changes the output directory to the location specified. The input
    file directory is used if this is not specified. (default: None)'
  type: string
  inputBinding:
    prefix: --outdir
- id: out_name
  doc: 'Changes the prefix of the successfully processed output file to the string
    specified. May not be specified with multiple input files. (default: None)'
  type: string
  inputBinding:
    prefix: --outname
- id: log
  doc: 'Specify to write verbose logging to a file. May not be specified with multiple
    input files. (default: None)'
  type: string
  inputBinding:
    prefix: --log
- id: failed
  doc: 'If specified create files containing records that fail processing. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --failed
- id: format
  doc: 'Specify input and output format. (default: changeo)'
  type: string
  inputBinding:
    prefix: --format
- id: nproc
  doc: 'The number of simultaneous computational processes to execute (CPU cores to
    utilized). (default: 8)'
  type: string
  inputBinding:
    prefix: --nproc
- id: sf
  doc: 'Field to be used to calculate distance between records. Defaults to JUNCTION
    (changeo) or junction (airr). (default: None)'
  type: string
  inputBinding:
    prefix: --sf
- id: vf
  doc: 'Field containing the germline V segment call. Defaults to V_CALL (changeo)
    or v_call (airr). (default: None)'
  type: string
  inputBinding:
    prefix: --vf
- id: jf
  doc: 'Field containing the germline J segment call. Defaults to J_CALL (changeo)
    or j_call (airr). (default: None)'
  type: string
  inputBinding:
    prefix: --jf
- id: gf
  doc: 'Additional fields to use for grouping clones aside from V, J and junction
    length. (default: None)'
  type: string[]
  inputBinding:
    prefix: --gf
- id: mode
  doc: 'Specifies whether to use the V(D)J allele or gene for initial grouping. (default:
    gene)'
  type: string
  inputBinding:
    prefix: --mode
- id: act
  doc: 'Specifies how to handle multiple V(D)J assignments for initial grouping. The
    "first" action will use only the first gene listed. The "set" action will use
    all gene assignments and construct a larger gene grouping composed of any sequences
    sharing an assignment or linked to another sequence by a common assignment (similar
    to single-linkage). (default: set)'
  type: string
  inputBinding:
    prefix: --act
- id: model
  doc: 'Specifies which substitution model to use for calculating distance between
    sequences. The "ham" model is nucleotide Hamming distance and "aa" is amino acid
    Hamming distance. The "hh_s1f" and "hh_s5f" models are human specific single nucleotide
    and 5-mer content models, respectively, from Yaari et al, 2013. The "mk_rs1nf"
    and "mk_rs5nf" models are mouse specific single nucleotide and 5-mer content models,
    respectively, from Cui et al, 2016. The "m1n_compat" and "hs1f_compat" models
    are deprecated models provided backwards compatibility with the "m1n" and "hs1f"
    models in Change-O v0.3.3 and SHazaM v0.1.4. Both 5-mer models should be considered
    experimental. (default: ham)'
  type: string
  inputBinding:
    prefix: --model
- id: dist
  doc: 'The distance threshold for clonal grouping (default: 0.0)'
  type: string
  inputBinding:
    prefix: --dist
- id: norm
  doc: 'Specifies how to normalize distances. One of none (do not normalize), len
    (normalize by length), or mut (normalize by number of mutations between sequences).
    (default: len)'
  type: string
  inputBinding:
    prefix: --norm
- id: sym
  doc: 'Specifies how to combine asymmetric distances. One of avg (average of A->B
    and B->A) or min (minimum of A->B and B->A). (default: avg)'
  type: string
  inputBinding:
    prefix: --sym
- id: link
  doc: 'Type of linkage to use for hierarchical clustering. (default: single)'
  type: string
  inputBinding:
    prefix: --link
- id: max_miss
  doc: 'The maximum number of non-ACGT characters (gaps or Ns) to permit in the junction
    sequence before excluding the record from clonal assignment. Note, under single
    linkage non-informative positions can create artifactual links between unrelated
    sequences. Use with caution. (default: 0)'
  type: long
  inputBinding:
    prefix: --maxmiss
outputs: []
cwlVersion: v1.1
baseCommand:
- DefineClones.py
