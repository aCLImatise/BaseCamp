version 1.0

task Phrasesearch {
  input {
    String done
    String do
    String sort
    String abnormalities
    String agonists
    String analysis
    String biosynthesis
    String chemistry
    String complications
    String cytology
    String diagnosis
    String economics
    String embryology
    String epidemiology
    String ethnology
    String genetics
    String history
    String injuries
    String instrumentation
    String manpower
    String methods
    String mortality
    String parasitology
    String pathology
    String pharmacology
    String physiopathology
    String psychology
    String radiotherapy
    String secondary
    String standards
    String surgery
    String therapy
    String transmission
    String trends
    String urine
    String veterinary
    String antagonism_blocking
    String bc
    String decreases_expressionproduction
    String var_39
    String sa
    String pr
    String pa
    String jc
    String mp
    String ud
    String jg
    String te
    String md
    String bg
    String eg
    String rg
  }
  command <<<
    phrase_search \
      ~{done} \
      ~{do} \
      ~{sort} \
      ~{abnormalities} \
      ~{agonists} \
      ~{analysis} \
      ~{biosynthesis} \
      ~{chemistry} \
      ~{complications} \
      ~{cytology} \
      ~{diagnosis} \
      ~{economics} \
      ~{embryology} \
      ~{epidemiology} \
      ~{ethnology} \
      ~{genetics} \
      ~{history} \
      ~{injuries} \
      ~{instrumentation} \
      ~{manpower} \
      ~{methods} \
      ~{mortality} \
      ~{parasitology} \
      ~{pathology} \
      ~{pharmacology} \
      ~{physiopathology} \
      ~{psychology} \
      ~{radiotherapy} \
      ~{secondary} \
      ~{standards} \
      ~{surgery} \
      ~{therapy} \
      ~{transmission} \
      ~{trends} \
      ~{urine} \
      ~{veterinary} \
      ~{antagonism_blocking} \
      ~{bc} \
      ~{decreases_expressionproduction} \
      ~{var_39} \
      ~{sa} \
      ~{pr} \
      ~{pa} \
      ~{jc} \
      ~{mp} \
      ~{ud} \
      ~{jg} \
      ~{te} \
      ~{md} \
      ~{bg} \
      ~{eg} \
      ~{rg}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    done: "declare -a THEMES"
    do: "num=$(phrase-search -query \\\"$fst [THME]\\\" | wc -l)\\necho -e \\\"$fst\\t \\t$num\\\"\\nfor scd in ${REMAINS[@]}\\ndo\\nnum=$(phrase-search -query \\\"$fst [THME] AND $scd [THME]\\\" | wc -l)\\necho -e \\\"$fst\\t$scd\\t$num\\\"\\necho -e \\\"$scd\\t$fst\\t$num\\\"\\ndone\\nREMAINS=(\\\"${REMAINS[@]:1}\\\")"
    sort: "ENTREZ INTEGRATION"
    abnormalities: "administration & dosage"
    agonists: "analogs & derivatives"
    analysis: "anatomy & histology"
    biosynthesis: "blood"
    chemistry: "classification"
    complications: "congenital"
    cytology: "deficiency"
    diagnosis: "diagnostic imaging"
    economics: "education"
    embryology: "enzymology"
    epidemiology: "ethics"
    ethnology: "etiology"
    genetics: "growth & development"
    history: "immunology"
    injuries: "innervation"
    instrumentation: "isolation & purification"
    manpower: "metabolism"
    methods: "microbiology"
    mortality: "nursing"
    parasitology: "pathogenicity"
    pathology: "pharmacokinetics"
    pharmacology: "physiology"
    physiopathology: "poisoning"
    psychology: "radiation effects"
    radiotherapy: "rehabilitation"
    secondary: "secretion"
    standards: "statistics & numerical data"
    surgery: "therapeutic use"
    therapy: "toxicity"
    transmission: "transplantation"
    trends: "ultrastructure"
    urine: "utilization"
    veterinary: "virology"
    antagonism_blocking: "antagonism, blocking"
    bc: "binding, ligand (especially receptors)"
    decreases_expressionproduction: "decreases expression/production"
    var_39: "affects expression/production (neutral)"
    sa: "side effect/adverse event"
    pr: "prevents, suppresses"
    pa: "alleviates, reduces"
    jc: "role in disease pathogenesis"
    mp: "biomarkers (of disease progression)"
    ud: "mutations affecting disease course"
    jg: "role in pathogenesis"
    te: "possible therapeutic effect"
    md: "biomarkers (diagnostic)"
    bg: "binding, ligand (especially receptors)"
    eg: "affects expression/production (neutral)"
    rg: "regulation"
  }
  output {
    File out_stdout = stdout()
  }
}