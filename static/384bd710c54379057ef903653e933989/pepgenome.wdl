version 1.0

task Pepgenome {
  input {
    String? chr
    String? fast_a
    String? format
    String? genome
    String? gtf
    String? in
    String? inf
    String? inm
    String? merge
    String? mm
    String? mm_mode
    String? source
    String? spark_master
    String arguments
  }
  command <<<
    pepgenome \
      ~{arguments} \
      ~{if defined(chr) then ("-chr " +  '"' + chr + '"') else ""} \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(format) then ("-format " +  '"' + format + '"') else ""} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if defined(gtf) then ("-gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(inf) then ("-inf " +  '"' + inf + '"') else ""} \
      ~{if defined(inm) then ("-inm " +  '"' + inm + '"') else ""} \
      ~{if defined(merge) then ("-merge " +  '"' + merge + '"') else ""} \
      ~{if defined(mm) then ("-mm " +  '"' + mm + '"') else ""} \
      ~{if defined(mm_mode) then ("-mmmode " +  '"' + mm_mode + '"') else ""} \
      ~{if defined(source) then ("-source " +  '"' + source + '"') else ""} \
      ~{if defined(spark_master) then ("-spark_master " +  '"' + spark_master + '"') else ""}
  >>>
  parameter_meta {
    chr: "Export chr prefix Allowed 0, 1  (default: 0)"
    fast_a: "Filepath for file containing protein sequences in FASTA format"
    format: "Select the output formats from gtf, gct, bed, ptmbed, all or combinations thereof separated by ',' (default all)"
    genome: "Filepath for file containing genome sequence in FASTA format used to extract chromosome names and order and differenciate between assembly and scaffolds. If not set chromosome and scaffold names and order is extracted from GTF input."
    gtf: "Filepath for file containing genome annotation in GTF format"
    in: "Comma(,) separated file paths for files containing peptide identifications (Contents of the file can tab separated format. i.e., File format: four columns: SampleName PeptideSequence PSMs Quant; or mzTab, and mzIdentML)"
    inf: "Format of the input file (mztab, mzid, or tsv). (default tsv)"
    inm: "Compute the kmer algorithm in memory or using database algorithm (default 0, database 1)"
    merge: "Set 'true' to merge mappings from all files from input (default 'false')"
    mm: "Allowed mismatches (0, 1 or 2; default: 0)"
    mm_mode: "Mismatch mode (true or false): if true mismatching with two mismatches will only allow 1 mismatch every kmersize (default: 5) positions. (default: false)"
    source: "Please give a source name which will be used in the second column in the output gtf file (default: PoGo)"
    spark_master: "Spark master String. i.e., to run locally use: local[*]"
    arguments: ""
  }
}