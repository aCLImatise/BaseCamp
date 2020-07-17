version 1.0

task SamToBam {
  input {
    String? convert
    String? ref
  }
  command <<<
    sam_to_bam \
      ~{if defined(convert) then ("--convert " +  '"' + convert + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  parameter_meta {
    convert: "Convert given SAM file to indexed, sorted BAM file with headers. Takes SAM filename and output directory."
    ref: "References file to use to get chromosome lengths."
  }
}