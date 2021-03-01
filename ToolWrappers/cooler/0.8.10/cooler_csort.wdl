version 1.0

task CoolerCsort {
  input {
    Int? chrom_one
    Int? chrom_two
    Int? pos_one
    Int? pos_two
    Boolean? index
    Boolean? flip_only
    Int? nproc
    Boolean? zero_based
    File? sep
    String? comment_char
    String? sort_options
    Int? strand_one
    Int? strand_two
    String o__text
  }
  command <<<
    cooler csort \
      ~{o__text} \
      ~{if defined(chrom_one) then ("--chrom1 " +  '"' + chrom_one + '"') else ""} \
      ~{if defined(chrom_two) then ("--chrom2 " +  '"' + chrom_two + '"') else ""} \
      ~{if defined(pos_one) then ("--pos1 " +  '"' + pos_one + '"') else ""} \
      ~{if defined(pos_two) then ("--pos2 " +  '"' + pos_two + '"') else ""} \
      ~{if (index) then "--index" else ""} \
      ~{if (flip_only) then "--flip-only" else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if (zero_based) then "--zero-based" else ""} \
      ~{if defined(sep) then ("--sep " +  '"' + sep + '"') else ""} \
      ~{if defined(comment_char) then ("--comment-char " +  '"' + comment_char + '"') else ""} \
      ~{if defined(sort_options) then ("--sort-options " +  '"' + sort_options + '"') else ""} \
      ~{if defined(strand_one) then ("--strand1 " +  '"' + strand_one + '"') else ""} \
      ~{if defined(strand_two) then ("--strand2 " +  '"' + strand_two + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooler:0.8.10--pyh3252c3a_0"
  }
  parameter_meta {
    chrom_one: "chrom1 field number in the input file (starting\\nfrom 1)  [required]"
    chrom_two: "chrom2 field number  [required]"
    pos_one: "pos1 field number  [required]"
    pos_two: "pos2 field number  [required]"
    index: "[tabix|pairix]  Select the preset sort and indexing options\\n[default: pairix]"
    flip_only: "Only flip mates; no sorting or indexing. Write\\nto stdout.  [default: False]"
    nproc: "Number of processors  [default: 8]"
    zero_based: "Read positions are zero-based  [default: False]"
    sep: "Data delimiter in the input file  [default: \\t]"
    comment_char: "Comment character to skip header  [default: #]"
    sort_options: "Quoted list of additional options to `sort`"
    strand_one: "strand1 field number (deprecated)"
    strand_two: "strand2 field number (deprecated)"
    o__text: "-o, --out TEXT              Output gzip file"
  }
  output {
    File out_stdout = stdout()
  }
}