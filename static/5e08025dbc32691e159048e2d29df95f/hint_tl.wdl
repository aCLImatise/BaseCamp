version 1.0

task HintTl {
  input {
    String? matrix_file
    String? ref_dir
    String? enzyme
    String? format
    String? p_path
    String? genome
    String? chimeric
    String? back_dir
    String? cut_off
    String? outdir
    String? name
    String? threads
  }
  command <<<
    hint tl \
      ~{if defined(matrix_file) then ("--matrixfile " +  '"' + matrix_file + '"') else ""} \
      ~{if defined(ref_dir) then ("--refdir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(enzyme) then ("--enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(p_path) then ("--ppath " +  '"' + p_path + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(chimeric) then ("--chimeric " +  '"' + chimeric + '"') else ""} \
      ~{if defined(back_dir) then ("--backdir " +  '"' + back_dir + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    matrix_file: "The matrix compressed file contains 1Mb and 100kb resolutions Hi-C contact matrix (.hic format), or 1Mb and 100kb resolution files seperate with ',', like /path/to/data_1Mb.cool,/path/to/data_100kb.cool or the directory that contain Hi-C interaction matrix in sparse or dense matrix format, interchromosomal interaction matrices only. Absolute path is required"
    ref_dir: "the reference directory that downloaded from dropbox dropbox. (https://www.dropbox.com/sh/2ufsyu4wvrboxxp/A ABk5-_Fwy7jdM_t0vIsgYf4a?dl=0.)"
    enzyme: "Enzyme used in Hi-C experiment, DEFAULT: MboI"
    format: "Format for the output contact matrix, DEFAULT: cooler"
    p_path: "Path for pairix, use 'which pairix' to get the path"
    genome: "Specify your species, choose form hg38, hg19, and mm10. DEFAULT: hg19"
    chimeric: "Chimeric read pairs with .pairsam format. If no chimeric reads provided, breakpoints in 100kb resolution will be output only"
    back_dir: "Path to the directory of backgroundInterchromMatrixDir, can be downloaded from  https://www.dropbox.com/sh/2ufsyu4wvrboxxp/AABk5-_Fwy7 jdM_t0vIsgYf4a?dl=0., named as backgroundMatrices, e,g. path_to_/backgroundMatrices/genome"
    cut_off: "Cutoff of the rank product for chromosomal pairs to select candidate translocated chromosomal pairs, default = 0.05"
    outdir: "Path to the output directory, where you want to store all the output files, if not set, the current directory will be used"
    name: "Prefix for the result files. If not set, 'NA' will be used instead"
    threads: "Number of threads for running HiNT-tl translocation breakpoints detection part, DEFAULT: 16"
  }
}