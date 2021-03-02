version 1.0

task PpanggolinFasta {
  input {
    File? pan_genome
    File? output_directory_be
    File? fast_a
    File? an_no
    String? regions
    String? genes
    String? prot_families
    String? gene_families
    Float? soft_core
    Boolean? compress
    Directory? tmpdir
    String? verbose
    File? log
    Boolean? disable_prog_bar
    Int? cpu
    File? force
  }
  command <<<
    ppanggolin fasta \
      ~{if defined(pan_genome) then ("--pangenome " +  '"' + pan_genome + '"') else ""} \
      ~{if defined(output_directory_be) then ("--output " +  '"' + output_directory_be + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(an_no) then ("--anno " +  '"' + an_no + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(genes) then ("--genes " +  '"' + genes + '"') else ""} \
      ~{if defined(prot_families) then ("--prot_families " +  '"' + prot_families + '"') else ""} \
      ~{if defined(gene_families) then ("--gene_families " +  '"' + gene_families + '"') else ""} \
      ~{if defined(soft_core) then ("--soft_core " +  '"' + soft_core + '"') else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (disable_prog_bar) then "--disable_prog_bar" else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ppanggolin:1.1.131--py37hf01694f_0"
  }
  parameter_meta {
    pan_genome: "The pangenome .h5 file (default: None)"
    output_directory_be: "Output directory where the file(s) will be written\\n(default: None)"
    fast_a: "A tab-separated file listing the organism names, and\\nthe fasta filepath of its genomic sequence(s) (the\\nfastas can be compressed with gzip). One line per\\norganism. (default: None)"
    an_no: "A tab-separated file listing the organism names, and\\nthe gff/gbff filepath of its annotations (the files\\ncan be compressed with gzip). One line per organism.\\nIf this is provided, those annotations will be used.\\n(default: None)"
    regions: "Write the RGP nucleotide sequences (requires --anno or\\n--fasta used to compute the pangenome to be given)\\n(default: None)"
    genes: "Write all nucleotide CDS sequences (default: None)"
    prot_families: "Write representative amino acid sequences of gene\\nfamilies (default: None)"
    gene_families: "Write representative nucleotide sequences of gene\\nfamilies (default: None)"
    soft_core: "Soft core threshold to use if 'softcore' partition is\\nchosen (default: 0.95)"
    compress: "Compress the files in .gz (default: False)"
    tmpdir: "directory for storing temporary files (default: /tmp)"
    verbose: "Indicate verbose level (0 for warning and errors only,\\n1 for info, 2 for debug) (default: 1)"
    log: "log output file (default: stdout)"
    disable_prog_bar: "disables the progress bars (default: False)"
    cpu: "Number of available cpus (default: 1)"
    force: "Force writing in output directory and in pangenome\\noutput file. (default: False)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_directory_be = "${in_output_directory_be}"
    File out_log = "${in_log}"
    File out_force = "${in_force}"
  }
}