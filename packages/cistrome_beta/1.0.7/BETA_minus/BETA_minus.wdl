version 1.0

task BETAMinus {
  input {
    File? peak_file
    String? genome
    File? reference
    File? name
    Directory? directory_store_files
    Int? distance
    Boolean? bl
    File? bf
    Int? pn
  }
  command <<<
    BETA minus \
      ~{if defined(peak_file) then ("--peakfile " +  '"' + peak_file + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(directory_store_files) then ("--output " +  '"' + directory_store_files + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if (bl) then "--bl" else ""} \
      ~{if defined(bf) then ("--bf " +  '"' + bf + '"') else ""} \
      ~{if defined(pn) then ("--pn " +  '"' + pn + '"') else ""}
  >>>
  parameter_meta {
    peak_file: "The bed format of peaks binding sites. (BETA support 3\\nor 5 columns bed format, CHROM, START, END (NAME,\\nSCORE))"
    genome: "Specify your species, hg38,hg19,hg18,mm10,mm9. For\\nother genome assembily versions of human and mouse or\\nother species, ignore this paramter"
    reference: "the refgene info file downloaded from UCSC genome\\nbrowser.input this file only if your genome is neither\\nhg19 nor mm9"
    name: "this argument is used as the prefix of the result\\nfile. If not set, 'NA' will be used instead"
    directory_store_files: "the directory to store all the output files, if you\\ndon't set this, files will be output into the current\\ndirectory"
    distance: "Set a number which unit is 'base'. It will get peaks\\nwithin this distance from gene TSS. default:100000\\n(100kb)"
    bl: "whether or not use CTCF boundary to filter peaks\\naround a gene, DEFAULT=FALSE"
    bf: "CTCF conserved peaks bed file, use this only when you\\nset --bl and the genome is neither hg19 nor mm9"
    pn: "the number of peaks you want to consider,\\nDEFAULT=10000\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_store_files = "${in_directory_store_files}"
  }
}