version 1.0

task AnnotateVcfBam.py {
  input {
    String bamBam
    Array[String]+ chromosomesChromosomes
    Array[String]+ vVCfs
  }
  command <<<
    annotate_vcf_bam.py \
      ~{if defined(bamBam) then ("--bam " +  '"' + bamBam + '"') else ""} \
      ~{if defined(chromosomesChromosomes) then ("--chromosomes " +  '"' + chromosomesChromosomes + '"') else ""} \
      ~{if defined(vVCfs) then ("--vcfs " +  '"' + vVCfs + '"') else ""}
  >>>
}