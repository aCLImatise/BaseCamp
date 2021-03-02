version 1.0

task Biotransformer {
  input {
    Boolean? annotate
    Int? bt_type
    String? formulas
    File? mol_input
    File? sdf_input
    String? is_miles
    String? task_permedpred_prediction
    String? masses
    File? csv_output
    File? sdf_output
    String? b_sequence
    Int? n_steps
    String? m_tolerance
    Int? jar
    String metabolite
  }
  command <<<
    biotransformer \
      ~{metabolite} \
      ~{if (annotate) then "--annotate" else ""} \
      ~{if defined(bt_type) then ("--btType " +  '"' + bt_type + '"') else ""} \
      ~{if defined(formulas) then ("--formulas " +  '"' + formulas + '"') else ""} \
      ~{if defined(mol_input) then ("--molinput " +  '"' + mol_input + '"') else ""} \
      ~{if defined(sdf_input) then ("--sdfinput " +  '"' + sdf_input + '"') else ""} \
      ~{if defined(is_miles) then ("--ismiles " +  '"' + is_miles + '"') else ""} \
      ~{if defined(task_permedpred_prediction) then ("--task " +  '"' + task_permedpred_prediction + '"') else ""} \
      ~{if defined(masses) then ("--masses " +  '"' + masses + '"') else ""} \
      ~{if defined(csv_output) then ("--csvoutput " +  '"' + csv_output + '"') else ""} \
      ~{if defined(sdf_output) then ("--sdfoutput " +  '"' + sdf_output + '"') else ""} \
      ~{if defined(b_sequence) then ("--bsequence " +  '"' + b_sequence + '"') else ""} \
      ~{if defined(n_steps) then ("--nsteps " +  '"' + n_steps + '"') else ""} \
      ~{if defined(m_tolerance) then ("--mTolerance " +  '"' + m_tolerance + '"') else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biotransformer:1.1.5--1"
  }
  parameter_meta {
    annotate: "Search PuChem for each\\nproduct, and store with\\nCID and synonyms, when\\navailable."
    bt_type: "The type of\\ndescription: Type of\\nbiotransformer -\\nEC-based  (ecbased),\\nCYP450 (cyp450), Phase\\nII (phaseII), Human gut\\nmicrobial (hgut), human\\nsuper transformer*\\n(superbio, or\\nallHuman),\\nEnvironmental microbial\\n(envimicro)**.\\nIf option -m is\\nenabled, the only valid\\nbiotransformer types\\nare allHuman, superbio\\nand env."
    formulas: "Semicolon-separated\\nlist of formulas of\\ncompounds to identify"
    mol_input: "The input, which can be\\na Mol file"
    sdf_input: "The input, which can be\\nan SDF file."
    is_miles: "The input, which can be\\na SMILES string"
    task_permedpred_prediction: "The task to be permed:\\npred for prediction, or\\ncid for compound\\nidentification"
    masses: "Semicolon-separated\\nlist of masses of\\ncompounds to identify"
    csv_output: "Select this option to\\nreturn CSV output(s).\\nYou must enter an\\noutput filename"
    sdf_output: "Select this option to\\nreturn SDF output(s).\\nYou must enter an\\noutput filename"
    b_sequence: "Define an ordered\\nsequence of\\nbiotransformer/nr_of_st\\neps to apply. Choose\\nonly from the following\\nBioTranformer Types:\\nallHuman, cyp450,\\necbased, env, hgut, and\\nphaseII. For instance,\\nthe following string\\nrepresentation\\ndescribes a sequence of\\n2 steps of CYP450\\nmetabolism, followed by\\n1 step of Human Gut\\nmetabolism, 1 step of\\nPhase II, and 1 step of\\nEnvironmental Microbial\\nDegradation:\\n'cyp450:2; hgut:1;\\nphaseII:1; env:1'"
    n_steps: "The number of steps for\\nthe prediction. This\\noption can be set by\\nthe user for the\\nEC-based, CYP450, Phase\\nII, and Environmental\\nmicrobial\\nbiotransformers. The\\ndefault value is 1."
    m_tolerance: "Mass tolerance for"
    jar: ""
    metabolite: "identification (default"
  }
  output {
    File out_stdout = stdout()
    File out_csv_output = "${in_csv_output}"
    File out_sdf_output = "${in_sdf_output}"
  }
}