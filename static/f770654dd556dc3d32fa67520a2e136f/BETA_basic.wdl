version 1.0

task BETABasic {
  input {
    File? peak_file
    File? diff_expr
    String? kind
    String? genome
    Boolean? g_name_two
    File? info
    File? reference
    Directory? directory_store_files
    Boolean? bl
    File? bf
    Int? pn
    String? method
    String? name
    Int? distance
    Int? df
    Int? da
    Int? cut_off
  }
  command <<<
    BETA basic \
      ~{if defined(peak_file) then ("--peakfile " +  '"' + peak_file + '"') else ""} \
      ~{if defined(diff_expr) then ("--diff_expr " +  '"' + diff_expr + '"') else ""} \
      ~{if defined(kind) then ("--kind " +  '"' + kind + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if (g_name_two) then "--gname2" else ""} \
      ~{if defined(info) then ("--info " +  '"' + info + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(directory_store_files) then ("--output " +  '"' + directory_store_files + '"') else ""} \
      ~{if (bl) then "--bl" else ""} \
      ~{if defined(bf) then ("--bf " +  '"' + bf + '"') else ""} \
      ~{if defined(pn) then ("--pn " +  '"' + pn + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(df) then ("--df " +  '"' + df + '"') else ""} \
      ~{if defined(da) then ("--da " +  '"' + da + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""}
  >>>
  parameter_meta {
    peak_file: "The bed format of peaks binding sites. (BETA support 3\\nor 5 columns bed format, CHROM, START, END (NAME,\\nSCORE))"
    diff_expr: "IThe differential expression file get from limma for\\nMicroArray ddata and cuffdiff for RNAseq data"
    kind: "the kind of your expression file,this is required,it\\ncan be LIM, CUF, BSF, O. LIM for LIMMA standard\\nformat. CUF for CUFDIFF standard format, BSF for BETA\\nspecific format and O for other formats, if is 'O',\\ncolumns infor required via --info"
    genome: "Specify your species, hg38,hg19,hg18,mm10,mm9. for\\nother genome assembily versions of human and mouse or\\nother species, ignore this paramter"
    g_name_two: "If this switch is on, gene or transcript IDs in files\\ngiven through -e will be considered as official gene\\nsymbols, DEFAULT=FALSE"
    info: "specify the geneID, up/down status and statistcal\\nvalues column of your expression data. NOTE: use a\\ncomma as an connector. for example: 1,2,6 means geneID\\nin the 1st column, logFC in 2nd column and FDR in 6th\\ncolumn. DEFAULT:1,2,6 for LIMMA; 2,10,13 for Cuffdiff\\nand 1,2,3 for BETA specific format. You'd better set\\nit based on your exact expression file"
    reference: "the refgene info file downloaded from UCSC genome\\nbrowser.input this file only if your genome is neither\\nhg18, hg19,hg38 nor mm9,mm10"
    directory_store_files: "the directory to store all the output files, if you\\ndon't set this, files will be output into the current\\ndirectory"
    bl: "whether or not use CTCF boundary to filter peaks\\naround a gene, DEFAULT=FALSE"
    bf: "CTCF conserved peaks bed file, use this only when you\\nset --bl and the genome is neither hg19 nor mm9"
    pn: "the number of peaks you want to consider,\\nDEFAULT=10000"
    method: "Define the method to do the TF/CR function prediction,\\nscore for regulatory potential, distance for the\\ndistance to the proximal binding peak. DEFAULT:SCORE"
    name: "this argument is used as the prefix for the result\\nfiles. If not set, 'NA' will be used instead"
    distance: "Set a number which unit is 'base'. It will get peaks\\nwithin this distance from gene TSS. default:100000\\n(100kb)"
    df: "Input a number 0~1 as a threshold to pick out the most\\nsignificant differential expressed genes by FDR,\\nDEFAULT = 1, that is select all the genes"
    da: "Get the most significant differential expressed genes\\nby the percentage(0-1) or number(larger than 1)Input a\\nnumber between 0-1, the rank based on fdr for example,\\n2000, so that the script will only consider top 2000\\ngenes as the differentially expressed genes. DEFAULT =\\n0.5, that is select top 50 percent genes of up and\\ndown seprately. NOTE: if you want to use diff_fdr,\\nplease set this parameter to 1, otherwise it will get\\nthe intersection of these two parameters"
    cut_off: "Input a number between 0~1 as a threshold to select\\nthe closer target gene list(up regulate or down\\nregulate or both) with the p value was called by one\\nside ks-test, DEFAULT = 0.001\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_store_files = "${in_directory_store_files}"
  }
}