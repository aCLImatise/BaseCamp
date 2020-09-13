version 1.0

task HintCnv {
  input {
    File? matrix_file
    Directory? ref_dir
    String? map_track
    File? bic_seq
    Boolean? do_iter
    String? format
    String? enzyme
    Int? resolution
    String? genome
    File? outdir
    String? name
    Int? threads
  }
  command <<<
    hint cnv \
      ~{if defined(matrix_file) then ("--matrixfile " +  '"' + matrix_file + '"') else ""} \
      ~{if defined(ref_dir) then ("--refdir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(map_track) then ("--maptrack " +  '"' + map_track + '"') else ""} \
      ~{if defined(bic_seq) then ("--bicseq " +  '"' + bic_seq + '"') else ""} \
      ~{if (do_iter) then "--doiter" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(enzyme) then ("--enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    matrix_file: "The matrix compressed file contains single or multiple\\nresolutions Hi-C contact matrix files (multi-cool, or\\nhic file), resolution should be set via parameter -r;\\nor a sparse | dense format matrix file whole genome\\nwidely (not suggest when using a high resolution)"
    ref_dir: "the reference directory that downloaded from dropbox\\ndropbox. (https://www.dropbox.com/sh/2ufsyu4wvrboxxp/A\\nABk5-_Fwy7jdM_t0vIsgYf4a?dl=0.)"
    map_track: "Choose which ENCODE mappability track should be used\\nfor regression. See more details\\nhttp://genome.ucsc.edu/cgi-\\nbin/hgTrackUi?db=hg18&g=wgEncodeMapability. DEFAULT:\\n50mer"
    bic_seq: "/path/to/bicseqDir/"
    do_iter: "If this switch is on, HiNT will do the iterative\\nregression model by removing copy numer variated\\nregions, DEFAULT=False"
    format: "Format for the output contact matrix, DEFAULT: cooler"
    enzyme: "enzyme used for the Hi-C experiments, will be used to\\ncalculate enzyme sites"
    resolution: "Resolution for the Hi-C contact matrix used for the\\nCNV detection, unit: kb, DEFAULT: 50kb"
    genome: "Specify your species, choose form hg38, hg19, and\\nmm10. DEFAULT: hg19"
    outdir: "Path to the output directory, where you want to store\\nall the output files, if not set, the current\\ndirectory will be used"
    name: "Prefix for the result files. If not set, 'NA' will be\\nused instead"
    threads: "Number of threads for running HiNT-cnv, DEFAULT: 16\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}