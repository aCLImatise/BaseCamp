version 1.0

task RapidNormsh {
  input {
    File? out
    File? conf
    File? an_not
    Int? de_seq
    File? rapid
    Int? restrict_length
  }
  command <<<
    rapidNorm_sh \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(an_not) then ("--annot " +  '"' + an_not + '"') else ""} \
      ~{if defined(de_seq) then ("--deseq " +  '"' + de_seq + '"') else ""} \
      ~{if defined(rapid) then ("--rapid " +  '"' + rapid + '"') else ""} \
      ~{if defined(restrict_length) then ("--restrictlength " +  '"' + restrict_length + '"') else ""}
  >>>
  parameter_meta {
    out: ": path to the output directory, directory will be created if non-existent"
    conf: ": the config file that defines which rapidStats analysis folders should be used"
    an_not: ": bed file with regions that should be used for the comparison"
    de_seq: ": Use only TRUE or FALSE. Set this to TRUE, if you wish to use DESeq2 based normalization. Default is FALSE."
    rapid: ": set location of the rapid installation bin folder (e.g. /home/software/RAPID/bin/) or put into PATH variable"
    restrict_length: ": Read Lengths to be considered. If not provided, all reads will be used. (Multiple read lengths should be separated by commas)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}