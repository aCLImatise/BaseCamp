version 1.0

task HomGeneMapping {
  input {
    File? hal_file
    File? gt_fs
    Int? cpus
    Boolean? no_dupes
    Boolean? details
    File? hal_lift_over_exec_dir
    Boolean? unmapped
    File? tmpdir
    File? outdir
    File? print_homologs
    Int? dbaccess
  }
  command <<<
    homGeneMapping \
      ~{if defined(hal_file) then ("--halfile " +  '"' + hal_file + '"') else ""} \
      ~{if defined(gt_fs) then ("--gtfs " +  '"' + gt_fs + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if (no_dupes) then "--noDupes" else ""} \
      ~{if (details) then "--details" else ""} \
      ~{if defined(hal_lift_over_exec_dir) then ("--halLiftover_exec_dir " +  '"' + hal_lift_over_exec_dir + '"') else ""} \
      ~{if (unmapped) then "--unmapped" else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(print_homologs) then ("--printHomologs " +  '"' + print_homologs + '"') else ""} \
      ~{if defined(dbaccess) then ("--dbaccess " +  '"' + dbaccess + '"') else ""}
  >>>
  parameter_meta {
    hal_file: "input hal file"
    gt_fs: "a text file containing the locations of the input gene files\\nand optionally the hints files (both in GTF format).\\nThe file is formatted as follows:\\nname_of_genome_1  path/to/genefile/of/genome_1  path/to/hintsfile/of/genome_1\\nname_of_genome_2  path/to/genefile/of/genome_2  path/to/hintsfile/of/genome_2\\n...\\nname_of_genome_N  path/to/genefile/of/genome_N  path/to/hintsfile/of/genome_N"
    cpus: "N is the number of CPUs to use (default: 1)"
    no_dupes: "do not map between duplications in hal graph. (default: off)"
    details: "print detailed output (default: off)"
    hal_lift_over_exec_dir: "Directory that contains the executable halLiftover\\nIf not specified it must be in $PATH environment variable."
    unmapped: "print a GTF attribute with a list of all genomes, that are not aligned to the\\ncorresponding gene feature, e.g. hgm_unmapped \\\"1,4,5\\\"; (default; off)"
    tmpdir: "a temporary file directory that stores lifted over files. (default 'tmp/' in current directory)"
    outdir: "file directory that stores output gene files. (default: current directory)"
    print_homologs: "prints disjunct sets of homologous transcripts to FILE, e.g.\\n# 0     dana\\n# 1     dere\\n# 2     dgri\\n# 3     dmel\\n# 4     dmoj\\n# 5     dper\\n(0,jg4139.t1) (0,jg4140.t1) (1,jg7797.t1) (2,jg3247.t1) (4,jg6720.t1) (5,jg313.t1)\\n(1,jg14269.t1) (3,jg89.t1) (5,jg290.t1)\\n...\\nTwo transcripts are in the same set, if all their exons/introns are homologs and their are\\nno additional exons/introns.\\nThis option requires the Boost C++ Library"
    dbaccess: "retrieve hints from an SQLite database. In order to set up a database and populate it with hints\\na separate tool 'load2sqlitedb' is provided. For more information, see the documentation in\\nREADME-cgp.txt (section 8a+b) in the Augustus package. If both a database and hint files in 'gtffilenames.tbl'\\nare specified, hints are retrieved from both sources.\\nThis option requires the SQLite3 library"
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
  }
}