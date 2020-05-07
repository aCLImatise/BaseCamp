version 1.0

task Pepgenome {
  input {
    String chrChr
    String fastFastA
    String formatFormat
    String genomeGenome
    String gtfGtf
    String inIn
    String infInf
    String inmInm
    String mergeMerge
    String mmMm
    String mmMmMode
    String sourceSource
    String sparkSparkMaster
  }
  command <<<
    pepgenome \
      ~{if defined(chrChr) then ("-chr " +  '"' + chrChr + '"') else ""} \
      ~{if defined(fastFastA) then ("-fasta " +  '"' + fastFastA + '"') else ""} \
      ~{if defined(formatFormat) then ("-format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(genomeGenome) then ("-genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(gtfGtf) then ("-gtf " +  '"' + gtfGtf + '"') else ""} \
      ~{if defined(inIn) then ("-in " +  '"' + inIn + '"') else ""} \
      ~{if defined(infInf) then ("-inf " +  '"' + infInf + '"') else ""} \
      ~{if defined(inmInm) then ("-inm " +  '"' + inmInm + '"') else ""} \
      ~{if defined(mergeMerge) then ("-merge " +  '"' + mergeMerge + '"') else ""} \
      ~{if defined(mmMm) then ("-mm " +  '"' + mmMm + '"') else ""} \
      ~{if defined(mmMmMode) then ("-mmmode " +  '"' + mmMmMode + '"') else ""} \
      ~{if defined(sourceSource) then ("-source " +  '"' + sourceSource + '"') else ""} \
      ~{if defined(sparkSparkMaster) then ("-spark_master " +  '"' + sparkSparkMaster + '"') else ""}
  >>>
}