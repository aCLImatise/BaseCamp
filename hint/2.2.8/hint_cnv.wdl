version 1.0

task HintCnv {
  input {
    String? matrix_file
    String? ref_dir
    String? map_track
    String? bic_seq
    Boolean? do_iter
    String? format
    String? enzyme
    String? resolution
    String? genome
    String? outdir
    String? name
    String? threads
  }
  command <<<
    hint cnv \
      ~{if defined(matrix_file) then ("--matrixfile " +  '"' + matrix_file + '"') else ""} \
      ~{if defined(ref_dir) then ("--refdir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(map_track) then ("--maptrack " +  '"' + map_track + '"') else ""} \
      ~{if defined(bic_seq) then ("--bicseq " +  '"' + bic_seq + '"') else ""} \
      ~{true="--doiter" false="" do_iter} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(enzyme) then ("--enzyme " +  '"' + enzyme + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    matrix_file: "The matrix compressed file contains single or multiple resolutions Hi-C contact matrix files (multi-cool, or hic file), resolution should be set via parameter -r; or a sparse | dense format matrix file whole genome widely (not suggest when using a high resolution)"
    ref_dir: "the reference directory that downloaded from dropbox dropbox. (https://www.dropbox.com/sh/2ufsyu4wvrboxxp/A ABk5-_Fwy7jdM_t0vIsgYf4a?dl=0.)"
    map_track: "Choose which ENCODE mappability track should be used for regression. See more details http://genome.ucsc.edu/cgi- bin/hgTrackUi?db=hg18&g=wgEncodeMapability. DEFAULT: 50mer"
    bic_seq: "/path/to/bicseqDir/"
    do_iter: "If this switch is on, HiNT will do the iterative regression model by removing copy numer variated regions, DEFAULT=False"
    format: "Format for the output contact matrix, DEFAULT: cooler"
    enzyme: "enzyme used for the Hi-C experiments, will be used to calculate enzyme sites"
    resolution: "Resolution for the Hi-C contact matrix used for the CNV detection, unit: kb, DEFAULT: 50kb"
    genome: "Specify your species, choose form hg38, hg19, and mm10. DEFAULT: hg19"
    outdir: "Path to the output directory, where you want to store all the output files, if not set, the current directory will be used"
    name: "Prefix for the result files. If not set, 'NA' will be used instead"
    threads: "Number of threads for running HiNT-cnv, DEFAULT: 16"
  }
}