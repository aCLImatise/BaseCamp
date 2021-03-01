version 1.0

task PancakeCore {
  input {
    File? pan_file
    String? ref_chrom
    String? ref_genome
    Array[String] non_ref_chrom_s
    Array[String] non_ref_genomes
    Array[String] exclude_genomes
    Array[String] exclude_chromosomes
    Int? max_non_core_frac
    Int? min_len
    Directory? directory_files_arewritten
    Boolean? no_output
    File? bed_file
    Int? max_space
  }
  command <<<
    pancake core \
      ~{if defined(pan_file) then ("--panfile " +  '"' + pan_file + '"') else ""} \
      ~{if defined(ref_chrom) then ("--ref_chrom " +  '"' + ref_chrom + '"') else ""} \
      ~{if defined(ref_genome) then ("--ref_genome " +  '"' + ref_genome + '"') else ""} \
      ~{if defined(non_ref_chrom_s) then ("--non_ref_chroms " +  '"' + non_ref_chrom_s + '"') else ""} \
      ~{if defined(non_ref_genomes) then ("--non_ref_genomes " +  '"' + non_ref_genomes + '"') else ""} \
      ~{if defined(exclude_genomes) then ("--exclude_genomes " +  '"' + exclude_genomes + '"') else ""} \
      ~{if defined(exclude_chromosomes) then ("--exclude_chromosomes " +  '"' + exclude_chromosomes + '"') else ""} \
      ~{if defined(max_non_core_frac) then ("--max_non_core_frac " +  '"' + max_non_core_frac + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(directory_files_arewritten) then ("--output " +  '"' + directory_files_arewritten + '"') else ""} \
      ~{if (no_output) then "--no_output" else ""} \
      ~{if defined(bed_file) then ("--bed_file " +  '"' + bed_file + '"') else ""} \
      ~{if defined(max_space) then ("--max_space " +  '"' + max_space + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pan_file: "Name of PanCake Data Object File (required)"
    ref_chrom: "Reference CHROMOSOME (define either ONE reference\\nchromosome OR ONE reference genome)"
    ref_genome: "Reference GENOME (define either ONE reference\\nchromosome OR ONE reference genome)"
    non_ref_chrom_s: "Names of non-reference CHROMOSOMES (DEFAULT: ALL non-\\nreference chromosomes)"
    non_ref_genomes: "Names of non-reference GENOMES (DEFAULT: ALL non-\\nreference genomes)"
    exclude_genomes: "Names of GENOMES to exclude from core analysis\\n(DEFAULT: No genomes excluded)"
    exclude_chromosomes: "Names of CHROMOSOMES to exclude from core analysis\\n(DEFAULT: No chromosomes excluded)"
    max_non_core_frac: "Maximum fraction of non-core sequence regions within\\neach included sequence (FLOAT, DEAFULT=0.05)"
    min_len: "minimum length of regions to identify as part of core\\ngenome (INTEGER, DEFAULT=25)"
    directory_files_arewritten: "directory to which .fasta files of core regions are\\nwritten (DEFAULT: core_{REF_CHROM|REF_GENOME})"
    no_output: "if set, supress .fasta output of core regions"
    bed_file: ".bed file to which core regions are written (DEFAULT=\\ncore_{REF_CHROM|REF_GENOME}.bed)"
    max_space: "maximum non-core space allowed within a core region\\n(DEFAULT=25)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}