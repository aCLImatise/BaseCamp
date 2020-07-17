version 1.0

task GetGWASoverlap.pl {
  input {
    Boolean? overlap_distance_default
    Boolean? min
    Boolean? cpu
    File? gregor
    Boolean? ld
    Boolean? study_id
    Boolean? study_id_file
    String? snp_out
    Boolean? snp_out_all
  }
  command <<<
    getGWASoverlap.pl \
      ~{true="-d" false="" overlap_distance_default} \
      ~{true="-min" false="" min} \
      ~{true="-cpu" false="" cpu} \
      ~{if defined(gregor) then ("-GREGOR " +  '"' + gregor + '"') else ""} \
      ~{true="-LD" false="" ld} \
      ~{true="-studyID" false="" study_id} \
      ~{true="-studyIDfile" false="" study_id_file} \
      ~{if defined(snp_out) then ("-snpOut " +  '"' + snp_out + '"') else ""} \
      ~{true="-snpOutAll" false="" snp_out_all}
  >>>
  parameter_meta {
    overlap_distance_default: "<#> (Overlap distance, default: 1000)"
    min: "<#> (minimum number of significant SNPs to consider study, default: 10)"
    cpu: "<#> (number of threads to use, default: 1)"
    gregor: "<path-to-Reference LD info> (perform enrichment test with GREGOR)"
    ld: "<#> (LD threshold for 'buddy SNPs', default 0.8, must be greater than 0.7)"
    study_id: "<#> (only analyze this study)"
    study_id_file: "<#> (only analyze this study)"
    snp_out: "(output overlapping snps & buddies as a BED file)"
    snp_out_all: "(output all SNPs, even if they aren't overlapping)"
  }
}