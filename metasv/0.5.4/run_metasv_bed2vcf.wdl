version 1.0

task RunMetasvBed2vcf.py {
  input {
    String sampleSample
    String bedBed
    String vcfVcf
    String referenceReference
    String workWork
    Boolean passPassOnly
  }
  command <<<
    run_metasv_bed2vcf.py \
      ~{if defined(sampleSample) then ("--sample " +  '"' + sampleSample + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(vcfVcf) then ("--vcf " +  '"' + vcfVcf + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(workWork) then ("--work " +  '"' + workWork + '"') else ""} \
      ~{true="--pass_only" false="" passPassOnly}
  >>>
}