version 1.0

task AnovaFixedpy {
  input {
    String? input_dataset_wide
    File? design
    String? id
    String? factors
    String? factor_types
    Boolean? interactions
    File? flags
    String? fig
    Int? fig_two
    String o_oname_onameoutput
  }
  command <<<
    anova_fixed_py \
      ~{o_oname_onameoutput} \
      ~{if defined(input_dataset_wide) then ("--input " +  '"' + input_dataset_wide + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(id) then ("--ID " +  '"' + id + '"') else ""} \
      ~{if defined(factors) then ("--factors " +  '"' + factors + '"') else ""} \
      ~{if defined(factor_types) then ("--factorTypes " +  '"' + factor_types + '"') else ""} \
      ~{if (interactions) then "--interactions" else ""} \
      ~{if defined(flags) then ("--flags " +  '"' + flags + '"') else ""} \
      ~{if defined(fig) then ("--fig " +  '"' + fig + '"') else ""} \
      ~{if defined(fig_two) then ("--fig2 " +  '"' + fig_two + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_dataset_wide: "Input dataset in wide format."
    design: "Design file."
    id: "Name of the column with unique identifiers."
    factors: "Factors to run ANOVA"
    factor_types: "Type of factors to run ANOVA"
    interactions: "Ask for interactions to run ANOVA"
    flags: "Flags file name."
    fig: "Output figure name for q-q plots [pdf]."
    fig_two: "Output figure name for volcano plots [pdf].\\n"
    o_oname_onameoutput: "-o ONAME, --out ONAME\\nOutput file name."
  }
  output {
    File out_stdout = stdout()
  }
}