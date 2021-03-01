version 1.0

task PfamSearchpl {
  input {
    File? outfile
    Boolean? clan_overlap
    Boolean? align
    String? e_seq
    String? e_dom
    String? b_seq
    String? b_dom
    Boolean? pfam_b
    Boolean? only_pfam_b
    Boolean? predict_active_residues
    Boolean? json
    Int? cpu
    Boolean? translate
    Directory? dir
    File? fast_a
    String cautiously_dot
  }
  command <<<
    pfam_search_pl \
      ~{cautiously_dot} \
      ~{if defined(outfile) then ("-outfile " +  '"' + outfile + '"') else ""} \
      ~{if (clan_overlap) then "-clan_overlap" else ""} \
      ~{if (align) then "-align" else ""} \
      ~{if defined(e_seq) then ("-e_seq " +  '"' + e_seq + '"') else ""} \
      ~{if defined(e_dom) then ("-e_dom " +  '"' + e_dom + '"') else ""} \
      ~{if defined(b_seq) then ("-b_seq " +  '"' + b_seq + '"') else ""} \
      ~{if defined(b_dom) then ("-b_dom " +  '"' + b_dom + '"') else ""} \
      ~{if (pfam_b) then "-pfamB" else ""} \
      ~{if (only_pfam_b) then "-only_pfamB" else ""} \
      ~{if (predict_active_residues) then "-as" else ""} \
      ~{if (json) then "-json" else ""} \
      ~{if defined(cpu) then ("-cpu " +  '"' + cpu + '"') else ""} \
      ~{if (translate) then "-translate" else ""} \
      ~{if defined(dir) then ("-dir " +  '"' + dir + '"') else ""} \
      ~{if defined(fast_a) then ("-fasta " +  '"' + fast_a + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outfile: ": output file, otherwise send to STDOUT"
    clan_overlap: ": show overlapping hits within clan member families (applies to Pfam-A families only)"
    align: ": show the HMM-sequence alignment for each match"
    e_seq: ": specify hmmscan evalue sequence cutoff for Pfam-A searches (default Pfam defined)"
    e_dom: ": specify hmmscan evalue domain cutoff for Pfam-A searches (default Pfam defined)"
    b_seq: ": specify hmmscan bit score sequence cutoff for Pfam-A searches (default Pfam defined)"
    b_dom: ": specify hmmscan bit score domain cutoff for Pfam-A searches (default Pfam defined)"
    pfam_b: ": search against Pfam-B* HMMs (uses E-value sequence and domain cutoff 0.001),\\nin addition to searching Pfam-A HMMs"
    only_pfam_b: ": search against Pfam-B* HMMs only (uses E-value sequence and domain cutoff 0.001)"
    predict_active_residues: ": predict active site residues for Pfam-A matches"
    json: "[pretty]    : write results in JSON format. If the optional value \\\"pretty\\\" is given,\\nthe JSON output will be formatted using the \\\"pretty\\\" option in the JSON\\nmodule"
    cpu: ": number of parallel CPU workers to use for multithreads (default all)"
    translate: "[mode] : treat sequence as DNA and perform six-frame translation before searching. If the\\noptional value \\\"mode\\\" is given it must be either \\\"all\\\", to translate everything\\nand produce no individual ORFs, or \\\"orf\\\", to report only ORFs with length greater\\nthan 20. If \\\"-translate\\\" is used without a \\\"mode\\\" value, the default is to\\nreport ORFs (default no translation)"
    dir: ""
    fast_a: ""
    cautiously_dot: "For more help, check the perldoc:\\nshell% perldoc pfam_scan.pl\\n"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}