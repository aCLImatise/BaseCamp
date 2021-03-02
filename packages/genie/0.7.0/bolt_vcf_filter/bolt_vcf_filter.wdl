version 1.0

task BoltVcfFilter {
  input {
    File? file_path
    Int? maxlength
    Int? minlength
    Boolean? only_sv
    File? output_file
    String genie
    String vcf
    String filter
  }
  command <<<
    bolt vcf filter \
      ~{genie} \
      ~{vcf} \
      ~{filter} \
      ~{if defined(file_path) then ("--filepath " +  '"' + file_path + '"') else ""} \
      ~{if defined(maxlength) then ("--maxlength " +  '"' + maxlength + '"') else ""} \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""} \
      ~{if (only_sv) then "--onlysv" else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_path: "a VCF file (*require)"
    maxlength: "Max SVLENGTH (default 2147483647)"
    minlength: "Min SVLENGTH (default -2147483647)"
    only_sv: "Only SVs"
    output_file: "output file"
    genie: ""
    vcf: ""
    filter: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}