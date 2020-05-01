version 1.0

task SvtoolToVcf.py {
  input {
    String inputInput
    String outputOutput
    String toolTool
    String sampleSample
    String referenceReference
    Boolean sortSort
    Boolean indexIndex
  }
  command <<<
    svtool_to_vcf.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(toolTool) then ("--tool " +  '"' + toolTool + '"') else ""} \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{true="--sort" false="" sortSort} \
      ~{true="--index" false="" indexIndex}
  >>>
}