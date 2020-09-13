version 1.0

task Uniprobe2meme {
  input {
    Boolean? rna
    String? skip
    Int? num_seqs
    Boolean? truncate_names
    Boolean? numbers
    File? bg
    Int? pseudo
    Boolean? log_odds
    String? url
    File? sg
    String? sp
  }
  command <<<
    uniprobe2meme \
      ~{if (rna) then "-rna" else ""} \
      ~{if defined(skip) then ("-skip " +  '"' + skip + '"') else ""} \
      ~{if defined(num_seqs) then ("-numseqs " +  '"' + num_seqs + '"') else ""} \
      ~{if (truncate_names) then "-truncate_names" else ""} \
      ~{if (numbers) then "-numbers" else ""} \
      ~{if defined(bg) then ("-bg " +  '"' + bg + '"') else ""} \
      ~{if defined(pseudo) then ("-pseudo " +  '"' + pseudo + '"') else ""} \
      ~{if (log_odds) then "-logodds" else ""} \
      ~{if defined(url) then ("-url " +  '"' + url + '"') else ""} \
      ~{if defined(sg) then ("-sg " +  '"' + sg + '"') else ""} \
      ~{if defined(sp) then ("-sp " +  '"' + sp + '"') else ""}
  >>>
  parameter_meta {
    rna: "output an RNA database instead of a DNA database."
    skip: "skip this ID (may be repeated)"
    num_seqs: "assume frequencies based on this many\\nsequences; default: 20"
    truncate_names: "truncate motif names at first underscore"
    numbers: "use numbers instead of strings as motif names"
    bg: "file with background frequencies of letters;\\ndefault: uniform background"
    pseudo: "add <total pseudocounts> times letter\\nbackground to each frequency; default: 0"
    log_odds: "print log-odds matrix, too;\\ndefault: print frequency matrix only"
    url: "website for the motif; The untruncated ID is\\nsubstituted for MOTIF_NAME; default: no url"
    sg: "TSV file with motif name, ID and source publication\\nin columns 1, 2 & 6 (+1 to column# if first blank)"
    sp: "only consider lines in <sg_file_name> that match\\nthis source publication; default: use all lines"
  }
  output {
    File out_stdout = stdout()
  }
}