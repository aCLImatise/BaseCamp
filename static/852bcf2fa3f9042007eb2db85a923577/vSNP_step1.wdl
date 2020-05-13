version 1.0

task VSNPStep1.py {
  input {
    String vVSnp
    String readRead1
    String readRead2
    String referenceReference
    String gbkGbk
    Boolean tableTable
    String groupGroup
    Boolean skipSkipAssembly
  }
  command <<<
    vSNP_step1.py \
      ~{if defined(vVSnp) then ("- vSNP " +  '"' + vVSnp + '"') else ""} \
      ~{if defined(readRead1) then ("--read1 " +  '"' + readRead1 + '"') else ""} \
      ~{if defined(readRead2) then ("--read2 " +  '"' + readRead2 + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(gbkGbk) then ("--gbk " +  '"' + gbkGbk + '"') else ""} \
      ~{true="--table" false="" tableTable} \
      ~{if defined(groupGroup) then ("--group " +  '"' + groupGroup + '"') else ""} \
      ~{true="--skip_assembly" false="" skipSkipAssembly}
  >>>
}