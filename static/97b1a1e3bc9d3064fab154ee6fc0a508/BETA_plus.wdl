version 1.0

task BETAPlus {
  input {
    String? peak_file
    String? diff_expr
    String? kind
    String? genome
    Boolean? g_name_two
    String? info
    String? gs
    String? reference
    String? directory_store_files
    Boolean? bl
    String? bf
    String? pn
    String? method
    String? name
    String? distance
    String? df
    String? da
    String? cut_off
    String? mn
  }
  command <<<
    BETA plus \
      ~{if defined(peak_file) then ("--peakfile " +  '"' + peak_file + '"') else ""} \
      ~{if defined(diff_expr) then ("--diff_expr " +  '"' + diff_expr + '"') else ""} \
      ~{if defined(kind) then ("--kind " +  '"' + kind + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{true="--gname2" false="" g_name_two} \
      ~{if defined(info) then ("--info " +  '"' + info + '"') else ""} \
      ~{if defined(gs) then ("--gs " +  '"' + gs + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(directory_store_files) then ("--output " +  '"' + directory_store_files + '"') else ""} \
      ~{true="--bl" false="" bl} \
      ~{if defined(bf) then ("--bf " +  '"' + bf + '"') else ""} \
      ~{if defined(pn) then ("--pn " +  '"' + pn + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(df) then ("--df " +  '"' + df + '"') else ""} \
      ~{if defined(da) then ("--da " +  '"' + da + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(mn) then ("--mn " +  '"' + mn + '"') else ""}
  >>>
  parameter_meta {
    peak_file: "The bed format of peaks binding sites.(BETA support 3 or 5 columns bed format, CHROM, START, END (NAME, SCORE))"
    diff_expr: "IThe differential expression file get from limma for MicroArray ddata and cuffdiff for RNAseq data"
    kind: "the kind of your expression file,this is required,it can be LIM, CUF, BSF, O. LIM for LIMMA standard format. CUF for CUFDIFF standard format, BSF for BETA specific format and O for other formats, if is 'O', columns infor required via --info"
    genome: "Specify your species, hg38,hg19,hg18,mm10,mm9. for other genome assembily versions of human and mouse, select hg or mm. Other species, ignore this paramter"
    g_name_two: "If this switch is on, gene or transcript IDs in files given through -g will be considered as official gene symbols, DEFAULT=FALSE"
    info: "specify the geneID, up/down status and statistcal values column of your expression data. NOTE: use a comma as an connector. for example: 1,2,6 means geneID in the 1st column, logFC in 2nd column and FDR in 6th column DEFAULT:1,2,6 for LIMMA; 2,10,13 for Cuffdiff and 1,2,3 for BETA specific format. You'd better set it based on your exact expression file"
    gs: "genome sequence data"
    reference: "the refgene info file downloaded from UCSC genome browser.input this file only if your genome is neither hg18,hg19,hg38 nor mm9,mm10"
    directory_store_files: "the directory to store all the output files, if you don't set this, files will be output into the current directory"
    bl: "wether or not use CTCF boundary to filter peaks around a gene, DEFAULT=FALSE"
    bf: "CTCF conserved peaks bed file, use this only when you set --bl and the genome is neither hg19 nor mm9"
    pn: "the number of peaks you want to consider, DEFAULT=10000"
    method: "Define the method to do the TF/CR function prediction, score for regulatory potential, distance for the distance to the proximal binding peak. DEFAULT:SCORE"
    name: "this argument is used as the prefix of the result files. If not set, 'NA' will be used instead"
    distance: "Set a number which unit is 'base'. It will get peaks within this distance from gene TSS. default:100000 (100kb)"
    df: "Input a number 0~1 as a threshold to pick out the most significant differential expressed genes by FDR, DEFAULT = 1, that is select all the genes"
    da: "Get the most significant differential expressed genes by the percentage(0-1) or number(larger than 1)Input a number between 0-1, the rank based on fdr for example, 2000, so that the script will only consider top 2000 genes as the differentially expressed genes. DEFAULT = 0.5, that is select top 50 percent genes of up and down seprately. NOTE: if you want to use diff_fdr, please set this parameter to 1, otherwise it will get the intersection of these two parameters"
    cut_off: "Input a number between 0~1 as a threshold to select the closer target gene list(up regulate or down regulate or both) with the p value was called by one side ks-test, DEFAULT = 0.001"
    mn: "Input a number between 0~1 as the p-value cutoff or larger than 1 as the number to get the motif retrieved in BETA output in html file. DEFAULT: 10"
  }
}