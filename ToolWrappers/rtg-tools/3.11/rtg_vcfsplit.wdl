version 1.0

task RtgVcfsplit {
  input {
    File? bed_regions
    File? input_vcf_read
    Int? region
    Boolean? keep_ref
    File? keep_sample
    File? remove_sample
    Boolean? no_gzip
    String _outputdir_directory
  }
  command <<<
    rtg vcfsplit \
      ~{_outputdir_directory} \
      ~{if defined(bed_regions) then ("--bed-regions " +  '"' + bed_regions + '"') else ""} \
      ~{if defined(input_vcf_read) then ("--input " +  '"' + input_vcf_read + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if (keep_ref) then "--keep-ref" else ""} \
      ~{if defined(keep_sample) then ("--keep-sample " +  '"' + keep_sample + '"') else ""} \
      ~{if defined(remove_sample) then ("--remove-sample " +  '"' + remove_sample + '"') else ""} \
      ~{if (no_gzip) then "--no-gzip" else ""}
  >>>
  parameter_meta {
    bed_regions: "if set, only read VCF records that overlap\\nthe ranges contained in the specified BED\\nfile"
    input_vcf_read: "the input VCF, or '-' to read from standard"
    region: "if set, only read VCF records within the\\nspecified range. The format is one of\\n<sequence_name>,\\n<sequence_name>:<start>-<end>,\\n<sequence_name>:<pos>+<length> or\\n<sequence_name>:<pos>~<padding>"
    keep_ref: "keep records where the sample is reference"
    keep_sample: "|FILE   file containing sample IDs to select, or a\\nliteral sample name. May be specified 0 or\\nmore times, or as a comma separated list"
    remove_sample: "|FILE file containing sample IDs to ignore, or a\\nliteral sample name. May be specified 0 or\\nmore times, or as a comma separated list"
    no_gzip: "do not gzip the output"
    _outputdir_directory: "-o, --output=DIR                directory for output"
  }
  output {
    File out_stdout = stdout()
  }
}