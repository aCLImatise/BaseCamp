version 1.0

task HintTl {
  input {
    String? back_dir
    File? matrix_file
    Directory? ref_dir
    String? enzyme
    String? format
    File? p_path
    String? genome
    Int? chimeric
    Float? cut_off
    File? outdir
    String? name
    Int? threads
  }
  command <<<
    hint tl \
      ~{if defined(back_dir) then ("--backdir " +  '"' + back_dir + '"') else ""} \
      ~{if defined(matrix_file) then ("--matrixfile " +  '"' + matrix_file + '"') else ""} \
      ~{if defined(ref_dir) then ("--refdir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(enzyme) then ("--enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(p_path) then ("--ppath " +  '"' + p_path + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(chimeric) then ("--chimeric " +  '"' + chimeric + '"') else ""} \
      ~{if defined(cut_off) then ("--cutoff " +  '"' + cut_off + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    back_dir: "[-c CUTOFF] [-o OUTDIR]"
    matrix_file: "The matrix compressed file contains 1Mb and 100kb\\nresolutions Hi-C contact matrix (.hic format), or 1Mb\\nand 100kb resolution files seperate with ',', like\\n/path/to/data_1Mb.cool,/path/to/data_100kb.cool or the\\ndirectory that contain Hi-C interaction matrix in\\nsparse or dense matrix format, interchromosomal\\ninteraction matrices only. Absolute path is required"
    ref_dir: "the reference directory that downloaded from dropbox\\ndropbox. (https://www.dropbox.com/sh/2ufsyu4wvrboxxp/A\\nABk5-_Fwy7jdM_t0vIsgYf4a?dl=0.)"
    enzyme: "Enzyme used in Hi-C experiment, DEFAULT: MboI"
    format: "Format for the output contact matrix, DEFAULT: cooler"
    p_path: "Path for pairix, use 'which pairix' to get the path"
    genome: "Specify your species, choose form hg38, hg19, and\\nmm10. DEFAULT: hg19"
    chimeric: "Chimeric read pairs with .pairsam format. If no\\nchimeric reads provided, breakpoints in 100kb\\nresolution will be output only"
    cut_off: "Cutoff of the rank product for chromosomal pairs to\\nselect candidate translocated chromosomal pairs,\\ndefault = 0.05"
    outdir: "Path to the output directory, where you want to store\\nall the output files, if not set, the current\\ndirectory will be used"
    name: "Prefix for the result files. If not set, 'NA' will be\\nused instead"
    threads: "Number of threads for running HiNT-tl translocation\\nbreakpoints detection part, DEFAULT: 16\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}