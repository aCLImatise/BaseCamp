version 1.0

task Pepgenome {
  input {
    Int? chr
    File? fast_a
    String? format
    File? genome
    File? gtf
    File? in
    File? inf
    Int? inm
    String? merge
    Int? mm
    Int? mm_mode
    File? source
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
    fast_a: "Filepath for file containing protein sequences in\\nFASTA format"
    format: "Select the output formats from gtf, gct, bed,\\nptmbed, all or combinations thereof separated by\\n',' (default all)"
    genome: "Filepath for file containing genome sequence in\\nFASTA format used to extract chromosome names and\\norder and differenciate between assembly and\\nscaffolds. If not set chromosome and scaffold names\\nand order is extracted from GTF input."
    gtf: "Filepath for file containing genome annotation in\\nGTF format"
    in: "Comma(,) separated file paths for files containing\\npeptide identifications (Contents of the file can\\ntab separated format. i.e., File format: four\\ncolumns: SampleName\\nPeptideSequence\\nPSMs\\nQuant; or mzTab, and mzIdentML)"
    inf: "Format of the input file (mztab, mzid, or tsv).\\n(default tsv)"
    inm: "Compute the kmer algorithm in memory or using\\ndatabase algorithm (default 0, database 1)"
    merge: "Set 'true' to merge mappings from all files from\\ninput (default 'false')"
    mm: "Allowed mismatches (0, 1 or 2; default: 0)"
    mm_mode: "Mismatch mode (true or false): if true mismatching\\nwith two mismatches will only allow 1 mismatch\\nevery kmersize (default: 5) positions. (default:\\nfalse)"
    source: "Please give a source name which will be used in the\\nsecond column in the output gtf file (default:\\nPoGo)"
    spark_master: "Spark master String. i.e., to run locally use:\\nlocal[*]\\n"
    arguments: ""
  }
  output {
    File out_stdout = stdout()
    File out_source = "${in_source}"
  }
}