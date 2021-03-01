version 1.0

task Jaspar2meme {
  input {
    Boolean? bundle
    Boolean? pfm
    Boolean? cm
    Boolean? numbers
    Int? strands
    File? bg
    String? b_file
    Int? pseudo
    Boolean? log_odds
    String? url
    Directory jaspar_directory_vertical_line_pfm_bundle
  }
  command <<<
    jaspar2meme \
      ~{jaspar_directory_vertical_line_pfm_bundle} \
      ~{if (bundle) then "-bundle" else ""} \
      ~{if (pfm) then "-pfm" else ""} \
      ~{if (cm) then "-cm" else ""} \
      ~{if (numbers) then "-numbers" else ""} \
      ~{if defined(strands) then ("-strands " +  '"' + strands + '"') else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(b_file) then ("-bfile " +  '"' + b_file + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if (log_odds) then "-logodds" else ""} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bundle: "read a single file containing many JASPAR\\ncount matrices in 2014 or 2016 format with\\ntheir names."
    pfm: "read JASPAR count files (.pfm);\\ndefault: site files (.sites)"
    cm: "read count file with line labels 'A|' etc. (.cm);\\ndefault: site files (.sites)"
    numbers: "use numbers instead of strings as motif names"
    strands: "|2    print '+ -' '+' on the MEME strand line;\\ndefault: 2 (prints '+ -')"
    bg: "file with background frequencies in MEME"
    b_file: "; default: uniform frequencies"
    pseudo: "add <A> times background frequency to\\neach count when computing letter frequencies\\ndefault: 0"
    log_odds: "print log-odds matrix as well as frequency matrix;\\ndefault: frequency matrix only"
    url: "website for the motif; The motif name\\nis substituted for MOTIF_NAME;"
    jaspar_directory_vertical_line_pfm_bundle: ""
  }
  output {
    File out_stdout = stdout()
  }
}