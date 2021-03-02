version 1.0

task SequanaGtfFixer {
  input {
    File? input_gtf_file
    File? output_gtf_file
    String gtf_fixer
    String var_3
    String n
    String var_5
  }
  command <<<
    sequana_gtf_fixer \
      ~{gtf_fixer} \
      ~{var_3} \
      ~{n} \
      ~{var_5} \
      ~{if defined(input_gtf_file) then ("--input " +  '"' + input_gtf_file + '"') else ""} \
      ~{if defined(output_gtf_file) then ("--output " +  '"' + output_gtf_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_gtf_file: "input GTF file"
    output_gtf_file: "output GTF file"
    gtf_fixer: ""
    var_3: ""
    n: ""
    var_5: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_gtf_file = "${in_output_gtf_file}"
  }
}