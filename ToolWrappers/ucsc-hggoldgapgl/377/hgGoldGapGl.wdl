version 1.0

task HgGoldGapGl {
  input {
    Boolean? no_gl
    String? chrom
    Int? chrom_lst
    Boolean? no_load
    Int? verbose
    String database
    String gs_dir
    String oo_subdir
  }
  command <<<
    hgGoldGapGl \
      ~{database} \
      ~{gs_dir} \
      ~{oo_subdir} \
      ~{if (no_gl) then "-noGl" else ""} \
      ~{if defined(chrom) then ("-chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(chrom_lst) then ("-chromLst " +  '"' + chrom_lst + '"') else ""} \
      ~{if (no_load) then "-noLoad" else ""} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_gl: "- don't do gl bits"
    chrom: "- just do a single chromosome.  Don't delete old tables."
    chrom_lst: "- chromosomes subdirs are named in chrom.lst (1, 2, ...)"
    no_load: "- do not load tables, leave SQL files instead."
    verbose: "- n==2 brief information and SQL table create statements\\n- n==3 show all gaps"
    database: ""
    gs_dir: ""
    oo_subdir: ""
  }
  output {
    File out_stdout = stdout()
  }
}