version 1.0

task Maf2vcf.pl {
  input {
    Boolean inputInputMaf
    Boolean outputOutputDir
    Boolean outputOutputVcf
    Boolean refRefFastA
    Boolean perPerTnVCfs
    Boolean tumTumDepthCol
    Boolean tumTumRadCol
    Boolean tumTumVadCol
    Boolean nrmNrmDepthCol
    Boolean nrmNrmRadCol
    Boolean nrmNrmVadCol
    Boolean manMan
    String? perlPerl
    String? maf2vcfplMaf2vcfpl
  }
  command <<<
    maf2vcf.pl \
      ~{perlPerl} \
      ~{true="--input-maf" false="" inputInputMaf} \
      ~{true="--output-dir" false="" outputOutputDir} \
      ~{true="--output-vcf" false="" outputOutputVcf} \
      ~{true="--ref-fasta" false="" refRefFastA} \
      ~{true="--per-tn-vcfs" false="" perPerTnVCfs} \
      ~{true="--tum-depth-col" false="" tumTumDepthCol} \
      ~{true="--tum-rad-col" false="" tumTumRadCol} \
      ~{true="--tum-vad-col" false="" tumTumVadCol} \
      ~{true="--nrm-depth-col" false="" nrmNrmDepthCol} \
      ~{true="--nrm-rad-col" false="" nrmNrmRadCol} \
      ~{true="--nrm-vad-col" false="" nrmNrmVadCol} \
      ~{true="--man" false="" manMan} \
      ~{maf2vcfplMaf2vcfpl}
  >>>
}