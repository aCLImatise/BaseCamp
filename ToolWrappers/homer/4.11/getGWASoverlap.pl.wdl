version 1.0

task GetGWASoverlappl {
  input {
    Boolean? overlap_distance_default
    Boolean? min
    Boolean? cpu
    File? gregor
    Boolean? ld
    Boolean? study_id
    Boolean? study_id_file
    File? snp_out
    Boolean? snp_out_all
  }
  command <<<
    getGWASoverlap_pl \
      ~{if (overlap_distance_default) then "-d" else ""} \
      ~{if (min) then "-min" else ""} \
      ~{if (cpu) then "-cpu" else ""} \
      ~{if defined(gregor) then ("-GREGOR " +  '"' + gregor + '"') else ""} \
      ~{if (ld) then "-LD" else ""} \
      ~{if (study_id) then "-studyID" else ""} \
      ~{if (study_id_file) then "-studyIDfile" else ""} \
      ~{if defined(snp_out) then ("-snpOut " +  '"' + snp_out + '"') else ""} \
      ~{if (snp_out_all) then "-snpOutAll" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
  output {
    File out_stdout = stdout()
    File out_snp_out = "${in_snp_out}"
  }
}