version 1.0

task VsnpAlignmentVcf.py {
  input {
    String readRead1
    String readRead2
    String referenceReference
    String gbkGbk
    Boolean skipSkipAssembly
  }
  command <<<
    vsnp_alignment_vcf.py \
      ~{if defined(readRead1) then ("--read1 " +  '"' + readRead1 + '"') else ""} \
      ~{if defined(readRead2) then ("--read2 " +  '"' + readRead2 + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(gbkGbk) then ("--gbk " +  '"' + gbkGbk + '"') else ""} \
      ~{true="--skip_assembly" false="" skipSkipAssembly}
  >>>
}