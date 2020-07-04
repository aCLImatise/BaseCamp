version 1.0

task GWAMA {
  input {
    Boolean? sex
    Boolean? filter
    Boolean? name_marker
    Boolean? name_strand
    Boolean? name_n
    Boolean? name_eaf
    Boolean? name_beta
    Boolean? name_se
    Boolean? name_or
    Boolean? name_or_nine_five_l
    Boolean? name_or_nine_five_u
  }
  command <<<
    GWAMA \
      ~{true="--sex" false="" sex} \
      ~{true="--filter" false="" filter} \
      ~{true="--name_marker" false="" name_marker} \
      ~{true="--name_strand" false="" name_strand} \
      ~{true="--name_n" false="" name_n} \
      ~{true="--name_eaf" false="" name_eaf} \
      ~{true="--name_beta" false="" name_beta} \
      ~{true="--name_se" false="" name_se} \
      ~{true="--name_or" false="" name_or} \
      ~{true="--name_or_95l" false="" name_or_nine_five_l} \
      ~{true="--name_or_95u" false="" name_or_nine_five_u}
  >>>
  parameter_meta {
    sex: "Run gender-differentiated and gender- heterogeneity analysis. Gender info   must be provided in filelist file.    (second column after file names is    either M or F) More info in tutorial."
    filter: "Set a filtering based on column       header. It needs 3 arguments: column  name, equation [>,<,>=,<=,==,!=],     filter value. Multiple filters can be set.                                 "
    name_marker: "alternative header to marker name col"
    name_strand: "alternative header to strand column  "
    name_n: "alternative header to sample size col"
    name_eaf: "alternative header to EAF column     "
    name_beta: "alternative header to beta column    "
    name_se: "alternative header to std. err. col  "
    name_or: "alternative header to OR column      "
    name_or_nine_five_l: "alternative header to OR 95L column  "
    name_or_nine_five_u: "alternative header to OR 95U column  "
  }
}