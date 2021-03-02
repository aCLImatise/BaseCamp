version 1.0

task Caddsh {
  input {
    Boolean? tsvgz_file_generated
    Boolean? genome_build_supported
    Boolean? cadd_version_only
    Boolean? include_annotation_required
    Boolean? print_basic_information
    Boolean? print_full_information
    Boolean? number_cores_snakemake
  }
  command <<<
    cadd_sh \
      ~{if (tsvgz_file_generated) then "-o" else ""} \
      ~{if (genome_build_supported) then "-g" else ""} \
      ~{if (cadd_version_only) then "-v" else ""} \
      ~{if (include_annotation_required) then "-a" else ""} \
      ~{if (print_basic_information) then "-q" else ""} \
      ~{if (print_full_information) then "-p" else ""} \
      ~{if (number_cores_snakemake) then "-c" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cadd-scripts:1.6--0"
  }
  parameter_meta {
    tsvgz_file_generated: "out tsv.gz file (generated from input file name if not set)"
    genome_build_supported: "genome build (supported are GRCh37 and GRCh38 [default: GRCh38])"
    cadd_version_only: "CADD version (only v1.6 possible with this set of scripts [default: v1.6])"
    include_annotation_required: "include annotation in output\\ninput vcf of vcf.gz file (required)"
    print_basic_information: "print basic information about snakemake run"
    print_full_information: "print full information about the snakemake run"
    number_cores_snakemake: "number of cores that snakemake is allowed to use [default: 1]"
  }
  output {
    File out_stdout = stdout()
  }
}