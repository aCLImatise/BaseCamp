version 1.0

task SamToBam {
  input {
    File? convert
    File? ref
  }
  command <<<
    sam_to_bam \
      ~{if defined(convert) then ("--convert " +  '"' + convert + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    convert: "Convert given SAM file to indexed, sorted BAM file with\\nheaders. Takes SAM filename and output directory."
    ref: "References file to use to get chromosome lengths."
  }
  output {
    File out_stdout = stdout()
    File out_convert = "${in_convert}"
  }
}