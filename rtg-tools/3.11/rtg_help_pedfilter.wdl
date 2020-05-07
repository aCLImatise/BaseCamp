version 1.0

task RtgHelpPedfilter {
  input {
    String keepKeepFamily
    String keepKeepIds
    Boolean keepKeepPrimary
    Boolean removeRemoveParentage
    Boolean vcfVcf
    File? fileFile
  }
  command <<<
    rtg help pedfilter \
      ~{fileFile} \
      ~{if defined(keepKeepFamily) then ("--keep-family " +  '"' + keepKeepFamily + '"') else ""} \
      ~{if defined(keepKeepIds) then ("--keep-ids " +  '"' + keepKeepIds + '"') else ""} \
      ~{true="--keep-primary" false="" keepKeepPrimary} \
      ~{true="--remove-parentage" false="" removeRemoveParentage} \
      ~{true="--vcf" false="" vcfVcf}
  >>>
}