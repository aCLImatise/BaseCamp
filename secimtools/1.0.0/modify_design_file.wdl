version 1.0

task ModifyDesignFile.py {
  input {
    String inputInput
    String designDesign
    String uniqidUniqid
    String groupGroup
    String dropsDrops
    String outOut
  }
  command <<<
    modify_design_file.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(designDesign) then ("--design " +  '"' + designDesign + '"') else ""} \
      ~{if defined(uniqidUniqid) then ("--uniqID " +  '"' + uniqidUniqid + '"') else ""} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{if defined(dropsDrops) then ("--drops " +  '"' + dropsDrops + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""}
  >>>
}