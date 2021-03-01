version 1.0

task Vcf2sequence {
  input {
    File? vcf
    String? sample
    String? region
    File? region_file
  }
  command <<<
    vcf2sequence \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(region_file) then ("--region-file " +  '"' + region_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vcf: "Path to input VCF  [required]"
    sample: "Sample to consider. If not given, take fist sample\\nin VCF"
    region: "Region string of format chr:start-end"
    region_file: "Path to BED file containing regions"
  }
  output {
    File out_stdout = stdout()
  }
}