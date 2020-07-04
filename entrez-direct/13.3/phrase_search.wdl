version 1.0

task PhraseSearch {
  input {
    String decreases_expressionproduction
    String var_1
    String inhibits
    String transport_channels
    String metabolism_pharmacokinetics
    String enzyme_activity
    String treatmenttherapy_including_investigatory
    String inhibits_growth_cancers
    String sa
    String pr
    String pa
    String jc
    String mp
    String causal_mutations
    String ud
    String drug_targets
    String jg
    String te
    String polymorphisms_alter_risk
    String promotes_progression
    String md
    String overexpression_in_disease
    String improper_regulation_linked
    String eg
    String signaling_pathway
    String same_protein_complex
    String rg
    String production_cell_population
  }
  command <<<
    phrase-search \
      ~{decreases_expressionproduction} \
      ~{var_1} \
      ~{inhibits} \
      ~{transport_channels} \
      ~{metabolism_pharmacokinetics} \
      ~{enzyme_activity} \
      ~{treatmenttherapy_including_investigatory} \
      ~{inhibits_growth_cancers} \
      ~{sa} \
      ~{pr} \
      ~{pa} \
      ~{jc} \
      ~{mp} \
      ~{causal_mutations} \
      ~{ud} \
      ~{drug_targets} \
      ~{jg} \
      ~{te} \
      ~{polymorphisms_alter_risk} \
      ~{promotes_progression} \
      ~{md} \
      ~{overexpression_in_disease} \
      ~{improper_regulation_linked} \
      ~{eg} \
      ~{signaling_pathway} \
      ~{same_protein_complex} \
      ~{rg} \
      ~{production_cell_population}
  >>>
  parameter_meta {
    decreases_expressionproduction: "decreases expression/production"
    var_1: "affects expression/production (neutral)"
    inhibits: "inhibits"
    transport_channels: "transport, channels"
    metabolism_pharmacokinetics: "metabolism, pharmacokinetics"
    enzyme_activity: "enzyme activity"
    treatmenttherapy_including_investigatory: "treatment/therapy (including investigatory)"
    inhibits_growth_cancers: "inhibits cell growth (especially cancers)"
    sa: "side effect/adverse event"
    pr: "prevents, suppresses"
    pa: "alleviates, reduces"
    jc: "role in disease pathogenesis"
    mp: "biomarkers (of disease progression)"
    causal_mutations: "causal mutations"
    ud: "mutations affecting disease course"
    drug_targets: "drug targets"
    jg: "role in pathogenesis"
    te: "possible therapeutic effect"
    polymorphisms_alter_risk: "polymorphisms alter risk"
    promotes_progression: "promotes progression"
    md: "biomarkers (diagnostic)"
    overexpression_in_disease: "overexpression in disease"
    improper_regulation_linked: "improper regulation linked to disease"
    eg: "affects expression/production (neutral)"
    signaling_pathway: "signaling pathway"
    same_protein_complex: "same protein or complex"
    rg: "regulation"
    production_cell_population: "production by cell population"
  }
}