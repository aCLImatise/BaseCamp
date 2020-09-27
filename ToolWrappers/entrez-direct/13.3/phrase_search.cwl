class: CommandLineTool
id: phrase_search.cwl
inputs:
- id: in_count
  doc: '| -counts | -query | -filter | -exact | -terms'
  type: boolean
  inputBinding:
    prefix: -count
- id: in_done
  doc: declare -a THEMES
  type: string
  inputBinding:
    position: 1
- id: in_do
  doc: "num=$(phrase-search -query \"$fst [THME]\" | wc -l)\necho -e \"$fst\\t \\\
    t$num\"\nfor scd in ${REMAINS[@]}\ndo\nnum=$(phrase-search -query \"$fst [THME]\
    \ AND $scd [THME]\" | wc -l)\necho -e \"$fst\\t$scd\\t$num\"\necho -e \"$scd\\\
    t$fst\\t$num\"\ndone\nREMAINS=(\"${REMAINS[@]:1}\")"
  type: string
  inputBinding:
    position: 0
- id: in_sort
  doc: ENTREZ INTEGRATION
  type: string
  inputBinding:
    position: 0
- id: in_abnormalities
  doc: administration & dosage
  type: string
  inputBinding:
    position: 0
- id: in_agonists
  doc: analogs & derivatives
  type: string
  inputBinding:
    position: 0
- id: in_analysis
  doc: anatomy & histology
  type: string
  inputBinding:
    position: 1
- id: in_biosynthesis
  doc: blood
  type: string
  inputBinding:
    position: 0
- id: in_chemistry
  doc: classification
  type: string
  inputBinding:
    position: 0
- id: in_complications
  doc: congenital
  type: string
  inputBinding:
    position: 1
- id: in_cytology
  doc: deficiency
  type: string
  inputBinding:
    position: 2
- id: in_diagnosis
  doc: diagnostic imaging
  type: string
  inputBinding:
    position: 3
- id: in_economics
  doc: education
  type: string
  inputBinding:
    position: 0
- id: in_embryology
  doc: enzymology
  type: string
  inputBinding:
    position: 1
- id: in_epidemiology
  doc: ethics
  type: string
  inputBinding:
    position: 2
- id: in_ethnology
  doc: etiology
  type: string
  inputBinding:
    position: 3
- id: in_genetics
  doc: growth & development
  type: string
  inputBinding:
    position: 4
- id: in_history
  doc: immunology
  type: string
  inputBinding:
    position: 5
- id: in_injuries
  doc: innervation
  type: string
  inputBinding:
    position: 6
- id: in_instrumentation
  doc: isolation & purification
  type: string
  inputBinding:
    position: 7
- id: in_manpower
  doc: metabolism
  type: string
  inputBinding:
    position: 0
- id: in_methods
  doc: microbiology
  type: string
  inputBinding:
    position: 1
- id: in_mortality
  doc: nursing
  type: string
  inputBinding:
    position: 2
- id: in_parasitology
  doc: pathogenicity
  type: string
  inputBinding:
    position: 0
- id: in_pathology
  doc: pharmacokinetics
  type: string
  inputBinding:
    position: 1
- id: in_pharmacology
  doc: physiology
  type: string
  inputBinding:
    position: 2
- id: in_physiopathology
  doc: poisoning
  type: string
  inputBinding:
    position: 3
- id: in_psychology
  doc: radiation effects
  type: string
  inputBinding:
    position: 0
- id: in_radiotherapy
  doc: rehabilitation
  type: string
  inputBinding:
    position: 1
- id: in_secondary
  doc: secretion
  type: string
  inputBinding:
    position: 2
- id: in_standards
  doc: statistics & numerical data
  type: string
  inputBinding:
    position: 3
- id: in_surgery
  doc: therapeutic use
  type: string
  inputBinding:
    position: 0
- id: in_therapy
  doc: toxicity
  type: string
  inputBinding:
    position: 1
- id: in_transmission
  doc: transplantation
  type: string
  inputBinding:
    position: 2
- id: in_trends
  doc: ultrastructure
  type: string
  inputBinding:
    position: 3
- id: in_urine
  doc: utilization
  type: string
  inputBinding:
    position: 4
- id: in_veterinary
  doc: virology
  type: string
  inputBinding:
    position: 5
- id: in_antagonism_blocking
  doc: antagonism, blocking
  type: string
  inputBinding:
    position: 0
- id: in_bc
  doc: binding, ligand (especially receptors)
  type: string
  inputBinding:
    position: 1
- id: in_decreases_expressionproduction
  doc: decreases expression/production
  type: string
  inputBinding:
    position: 0
- id: in_var_40
  doc: affects expression/production (neutral)
  type: string
  inputBinding:
    position: 1
- id: in_sa
  doc: side effect/adverse event
  type: string
  inputBinding:
    position: 0
- id: in_pr
  doc: prevents, suppresses
  type: string
  inputBinding:
    position: 1
- id: in_pa
  doc: alleviates, reduces
  type: string
  inputBinding:
    position: 2
- id: in_jc
  doc: role in disease pathogenesis
  type: string
  inputBinding:
    position: 3
- id: in_mp
  doc: biomarkers (of disease progression)
  type: string
  inputBinding:
    position: 0
- id: in_ud
  doc: mutations affecting disease course
  type: string
  inputBinding:
    position: 0
- id: in_jg
  doc: role in pathogenesis
  type: string
  inputBinding:
    position: 0
- id: in_te
  doc: possible therapeutic effect
  type: string
  inputBinding:
    position: 1
- id: in_md
  doc: biomarkers (diagnostic)
  type: string
  inputBinding:
    position: 0
- id: in_bg
  doc: binding, ligand (especially receptors)
  type: string
  inputBinding:
    position: 0
- id: in_eg
  doc: affects expression/production (neutral)
  type: string
  inputBinding:
    position: 0
- id: in_rg
  doc: regulation
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phrase-search
