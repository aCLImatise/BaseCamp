version 1.0

task BETAMinus {
  input {
    String? peak_file
    String? genome
    String? reference
    String? name
    String? directory_store_files
    String? distance
    Boolean? bl
    String? bf
    String? pn
  }
  command <<<
    BETA minus \
      ~{if defined(peak_file) then ("--peakfile " +  '"' + peak_file + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(directory_store_files) then ("--output " +  '"' + directory_store_files + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{true="--bl" false="" bl} \
      ~{if defined(bf) then ("--bf " +  '"' + bf + '"') else ""} \
      ~{if defined(pn) then ("--pn " +  '"' + pn + '"') else ""}
  >>>
  parameter_meta {
    peak_file: "The bed format of peaks binding sites. (BETA support 3 or 5 columns bed format, CHROM, START, END (NAME, SCORE))"
    genome: "Specify your species, hg38,hg19,hg18,mm10,mm9. For other genome assembily versions of human and mouse or other species, ignore this paramter"
    reference: "the refgene info file downloaded from UCSC genome browser.input this file only if your genome is neither hg19 nor mm9"
    name: "this argument is used as the prefix of the result file. If not set, 'NA' will be used instead"
    directory_store_files: "the directory to store all the output files, if you don't set this, files will be output into the current directory"
    distance: "Set a number which unit is 'base'. It will get peaks within this distance from gene TSS. default:100000 (100kb)"
    bl: "whether or not use CTCF boundary to filter peaks around a gene, DEFAULT=FALSE"
    bf: "CTCF conserved peaks bed file, use this only when you set --bl and the genome is neither hg19 nor mm9"
    pn: "the number of peaks you want to consider, DEFAULT=10000"
  }
}