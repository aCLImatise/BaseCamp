version 1.0

task Fastq2bam {
  input {
    Int? cell_barcode_offset
    Int? cell_barcode_size
    Int? umi_barcode_offset
    Int? umi_barcode_size
    Int? sample_barcode_offset
    Int? sample_barcode_size
    Boolean? use_umi_tags
    Int? four
    Int? three
    Int? two
    Int? one
    String? b
    String? s
  }
  command <<<
    fastq2bam \
      ~{if defined(cell_barcode_offset) then ("-c " +  '"' + cell_barcode_offset + '"') else ""} \
      ~{if defined(cell_barcode_size) then ("-C " +  '"' + cell_barcode_size + '"') else ""} \
      ~{if defined(umi_barcode_offset) then ("-u " +  '"' + umi_barcode_offset + '"') else ""} \
      ~{if defined(umi_barcode_size) then ("-U " +  '"' + umi_barcode_size + '"') else ""} \
      ~{if defined(sample_barcode_offset) then ("-z " +  '"' + sample_barcode_offset + '"') else ""} \
      ~{if defined(sample_barcode_size) then ("-Z " +  '"' + sample_barcode_size + '"') else ""} \
      ~{if (use_umi_tags) then "-X" else ""} \
      ~{if defined(four) then ("-4 " +  '"' + four + '"') else ""} \
      ~{if defined(three) then ("-3 " +  '"' + three + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cell_barcode_offset: ": cell barcode offset"
    cell_barcode_size: ": cell barcode size"
    umi_barcode_offset: ": UMI barcode offset"
    umi_barcode_size: ": UMI barcode size"
    sample_barcode_offset: ": sample barcode offset"
    sample_barcode_size: ": sample barcode size"
    use_umi_tags: ": use 10x UMI tags instead of tags defined in the SAM specification"
    four: ""
    three: ""
    two: ""
    one: ""
    b: ""
    s: ""
  }
  output {
    File out_stdout = stdout()
  }
}