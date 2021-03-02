version 1.0

task PathoscopeREP {
  input {
    File? sam_tools_home
    String? dbhost
    Int? db_port
    String? dbuser
    String? db_passwd
    String? db
    Directory? outdir
    Boolean? contig
    File? sam_file
    Boolean? no_display_cut_off
  }
  command <<<
    pathoscope REP \
      ~{if defined(sam_tools_home) then ("-samtoolsHome " +  '"' + sam_tools_home + '"') else ""} \
      ~{if defined(dbhost) then ("-dbhost " +  '"' + dbhost + '"') else ""} \
      ~{if defined(db_port) then ("-dbport " +  '"' + db_port + '"') else ""} \
      ~{if defined(dbuser) then ("-dbuser " +  '"' + dbuser + '"') else ""} \
      ~{if defined(db_passwd) then ("-dbpasswd " +  '"' + db_passwd + '"') else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if defined(outdir) then ("-outDir " +  '"' + outdir + '"') else ""} \
      ~{if (contig) then "--contig" else ""} \
      ~{if defined(sam_file) then ("-samfile " +  '"' + sam_file + '"') else ""} \
      ~{if (no_display_cut_off) then "--noDisplayCutoff" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sam_tools_home: "Full Path to samtools binary directory (Default: Uses\\nsamtools in system path)"
    dbhost: "specify hostname running mysql if you want to use\\nmysql instead of hash method in mapping gi to taxonomy\\nid"
    db_port: "provide mysql server port if different from default\\n(3306)"
    dbuser: "user name to access mysql"
    db_passwd: "provide password associate with user"
    db: "mysql pathoscope database name (default: pathodb)"
    outdir: "Output Directory"
    contig: "Generate Contig Information (Needs samtools package\\ninstalled)"
    sam_file: "SAM Alignment file path"
    no_display_cut_off: "Do not cutoff display of genomes, even if it is\\ninsignificant\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}