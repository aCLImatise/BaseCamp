version 1.0

task GenieVcfFilter {
  input {
    String? file_path
    Int? maxlength
    Int? minlength
    Boolean? only_sv
    String? output_file
    String? flags
  }
  command <<<
    genie vcf filter \
      ~{flags} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""} \
      ~{if defined(maxlength) then ("--maxlength " +  '"' + maxlength + '"') else ""} \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""} \
      ~{true="--onlysv" false="" only_sv} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    file_path: "a VCF file (*require)"
    maxlength: "Max SVLENGTH (default 2147483647)"
    minlength: "Min SVLENGTH (default -2147483647)"
    only_sv: "Only SVs"
    output_file: "output file"
    flags: ""
  }
}