version 1.0

task RemoveSelectedFeaturesSamples.py {
  input {
    String inputInput
    String designDesign
    String idId
    String flagsFlags
    String flagFlagFileType
    String flagFlagUniqid
    String flagFlagDrop
    String valueValue
    String conditionCondition
    String outOutWide
    String outOutFlags
  }
  command <<<
    remove_selected_features_samples.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(idId) then ("--ID " +  '"' + idId + '"') else ""} \
      ~{if defined(flagsFlags) then ("--flags " +  '"' + flagsFlags + '"') else ""} \
      ~{if defined(flagFlagFileType) then ("--flagfiletype " +  '"' + flagFlagFileType + '"') else ""} \
      ~{if defined(flagFlagUniqid) then ("--flagUniqID " +  '"' + flagFlagUniqid + '"') else ""} \
      ~{if defined(flagFlagDrop) then ("--flagDrop " +  '"' + flagFlagDrop + '"') else ""} \
      ~{if defined(valueValue) then ("--value " +  '"' + valueValue + '"') else ""} \
      ~{if defined(conditionCondition) then ("--condition " +  '"' + conditionCondition + '"') else ""} \
      ~{if defined(outOutWide) then ("--outWide " +  '"' + outOutWide + '"') else ""} \
      ~{if defined(outOutFlags) then ("--outFlags " +  '"' + outOutFlags + '"') else ""}
  >>>
}