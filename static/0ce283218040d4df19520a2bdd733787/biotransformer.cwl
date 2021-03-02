class: CommandLineTool
id: biotransformer.cwl
inputs:
- id: in_annotate
  doc: "Search PuChem for each\nproduct, and store with\nCID and synonyms, when\n\
    available."
  type: boolean?
  inputBinding:
    prefix: --annotate
- id: in_bt_type
  doc: "The type of\ndescription: Type of\nbiotransformer -\nEC-based  (ecbased),\n\
    CYP450 (cyp450), Phase\nII (phaseII), Human gut\nmicrobial (hgut), human\nsuper\
    \ transformer*\n(superbio, or\nallHuman),\nEnvironmental microbial\n(envimicro)**.\n\
    If option -m is\nenabled, the only valid\nbiotransformer types\nare allHuman,\
    \ superbio\nand env."
  type: long?
  inputBinding:
    prefix: --btType
- id: in_formulas
  doc: "Semicolon-separated\nlist of formulas of\ncompounds to identify"
  type: string?
  inputBinding:
    prefix: --formulas
- id: in_mol_input
  doc: "The input, which can be\na Mol file"
  type: File?
  inputBinding:
    prefix: --molinput
- id: in_sdf_input
  doc: "The input, which can be\nan SDF file."
  type: File?
  inputBinding:
    prefix: --sdfinput
- id: in_is_miles
  doc: "The input, which can be\na SMILES string"
  type: string?
  inputBinding:
    prefix: --ismiles
- id: in_task
  doc: "The task to be permed:\npred for prediction, or\ncid for compound\nidentification"
  type: string?
  inputBinding:
    prefix: --task
- id: in_masses
  doc: "Semicolon-separated\nlist of masses of\ncompounds to identify"
  type: string?
  inputBinding:
    prefix: --masses
- id: in_csv_output
  doc: "Select this option to\nreturn CSV output(s).\nYou must enter an\noutput filename"
  type: File?
  inputBinding:
    prefix: --csvoutput
- id: in_sdf_output
  doc: "Select this option to\nreturn SDF output(s).\nYou must enter an\noutput filename"
  type: File?
  inputBinding:
    prefix: --sdfoutput
- id: in_b_sequence
  doc: "Define an ordered\nsequence of\nbiotransformer/nr_of_st\neps to apply. Choose\n\
    only from the following\nBioTranformer Types:\nallHuman, cyp450,\necbased, env,\
    \ hgut, and\nphaseII. For instance,\nthe following string\nrepresentation\ndescribes\
    \ a sequence of\n2 steps of CYP450\nmetabolism, followed by\n1 step of Human Gut\n\
    metabolism, 1 step of\nPhase II, and 1 step of\nEnvironmental Microbial\nDegradation:\n\
    'cyp450:2; hgut:1;\nphaseII:1; env:1'"
  type: string?
  inputBinding:
    prefix: --bsequence
- id: in_n_steps
  doc: "The number of steps for\nthe prediction. This\noption can be set by\nthe user\
    \ for the\nEC-based, CYP450, Phase\nII, and Environmental\nmicrobial\nbiotransformers.\
    \ The\ndefault value is 1."
  type: long?
  inputBinding:
    prefix: --nsteps
- id: in_m_tolerance
  doc: Mass tolerance for
  type: string?
  inputBinding:
    prefix: --mTolerance
- id: in_jar
  doc: ''
  type: long?
  inputBinding:
    prefix: -jar
- id: in_metabolite
  doc: identification (default
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_csv_output
  doc: "Select this option to\nreturn CSV output(s).\nYou must enter an\noutput filename"
  type: File?
  outputBinding:
    glob: $(inputs.in_csv_output)
- id: out_sdf_output
  doc: "Select this option to\nreturn SDF output(s).\nYou must enter an\noutput filename"
  type: File?
  outputBinding:
    glob: $(inputs.in_sdf_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/biotransformer:1.1.5--1
cwlVersion: v1.1
baseCommand:
- biotransformer
