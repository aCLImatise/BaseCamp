version 1.0

task SkgConvertpy {
  input {
    File? output_filename
    String? from
    String? to
    Boolean? flatten
    Boolean? merge
    String? gff_tag
    Int? gff_type
    String? ref_flat_type
    File input_filename
  }
  command <<<
    skg_convert_py \
      ~{input_filename} \
      ~{if defined(output_filename) then ("--output " +  '"' + output_filename + '"') else ""} \
      ~{if defined(from) then ("--from " +  '"' + from + '"') else ""} \
      ~{if defined(to) then ("--to " +  '"' + to + '"') else ""} \
      ~{if (flatten) then "--flatten" else ""} \
      ~{if (merge) then "--merge" else ""} \
      ~{if defined(gff_tag) then ("--gff-tag " +  '"' + gff_tag + '"') else ""} \
      ~{if defined(gff_type) then ("--gff-type " +  '"' + gff_type + '"') else ""} \
      ~{if defined(ref_flat_type) then ("--refflat-type " +  '"' + ref_flat_type + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_filename: "Output filename. [Default: stdout]"
    from: "Input format. [Default: auto-detect]"
    to: "Output format. [Required]"
    flatten: "Flatten overlapping regions, keeping original\\nboundaries. Not recommended with --exons."
    merge: "[BASEPAIRS]   Merge overlapping regions with different names.\\nRecommended with --exons. Optional argument value is\\nthe number of overlapping bases between two regions to\\ntrigger a merge. [Default: 1]"
    gff_tag: "GFF attributes tag to use for gene names."
    gff_type: "GFF record type (column 3) to use exclusively. E.g.\\nfor GFF3 files, 'exon', 'gene', and other SOFA terms\\ncan be used here."
    ref_flat_type: "Emit each exon instead of the whole gene regions.\\n"
    input_filename: "Input filename. [Default: stdin]"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename = "${in_output_filename}"
  }
}