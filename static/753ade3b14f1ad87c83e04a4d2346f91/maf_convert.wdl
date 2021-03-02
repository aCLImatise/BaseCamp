version 1.0

task Mafconvert {
  input {
    Boolean? protein
    String? join
    Boolean? noheader
    Boolean? dictionary
    File? dict_file
    String? read_group
    Int? line_size
    String axt
    String blast
    String blast_tab
    String chain
    String html
    String psl
    String sam
    String tab
    String maf_file
  }
  command <<<
    maf_convert \
      ~{axt} \
      ~{blast} \
      ~{blast_tab} \
      ~{chain} \
      ~{html} \
      ~{psl} \
      ~{sam} \
      ~{tab} \
      ~{maf_file} \
      ~{if (protein) then "--protein" else ""} \
      ~{if defined(join) then ("--join " +  '"' + join + '"') else ""} \
      ~{if (noheader) then "--noheader" else ""} \
      ~{if (dictionary) then "--dictionary" else ""} \
      ~{if defined(dict_file) then ("--dictfile " +  '"' + dict_file + '"') else ""} \
      ~{if defined(read_group) then ("--readgroup " +  '"' + read_group + '"') else ""} \
      ~{if defined(line_size) then ("--linesize " +  '"' + line_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    protein: "assume protein alignments, for psl match counts"
    join: "join co-linear alignments separated by <= N letters"
    noheader: "omit any header lines from the output"
    dictionary: "include dictionary of sequence lengths in sam format"
    dict_file: "get sequence dictionary from DICTFILE"
    read_group: "read group info for sam format"
    line_size: "line length for blast and html formats (default: 60)\\n"
    axt: ""
    blast: ""
    blast_tab: ""
    chain: ""
    html: ""
    psl: ""
    sam: ""
    tab: ""
    maf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}