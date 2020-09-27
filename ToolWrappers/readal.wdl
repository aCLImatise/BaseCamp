version 1.0

task Readal {
  input {
    File? in
    File? out
    Boolean? format
    Boolean? type
    Boolean? info
    Boolean? only_seqs
    File? html
    Boolean? reverse
    File? nbr_f
    File? mega
    File? nexus
    File? clustal
    File? fast_a
    File? fast_a_m_one_zero
    File? phylip
    File? phylip_m_one_zero
    File? phylip_paml
    File? phylip_paml_m_one_zero
    File? phylip_three_dot_two
    File? phylip_three_dot_two_m_one_zero
  }
  command <<<
    readal \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (format) then "-format" else ""} \
      ~{if (type) then "-type" else ""} \
      ~{if (info) then "-info" else ""} \
      ~{if (only_seqs) then "-onlyseqs" else ""} \
      ~{if (html) then "-html" else ""} \
      ~{if (reverse) then "-reverse" else ""} \
      ~{if (nbr_f) then "-nbrf" else ""} \
      ~{if (mega) then "-mega" else ""} \
      ~{if (nexus) then "-nexus" else ""} \
      ~{if (clustal) then "-clustal" else ""} \
      ~{if (fast_a) then "-fasta" else ""} \
      ~{if (fast_a_m_one_zero) then "-fasta_m10" else ""} \
      ~{if (phylip) then "-phylip" else ""} \
      ~{if (phylip_m_one_zero) then "-phylip_m10" else ""} \
      ~{if (phylip_paml) then "-phylip_paml" else ""} \
      ~{if (phylip_paml_m_one_zero) then "-phylip_paml_m10" else ""} \
      ~{if (phylip_three_dot_two) then "-phylip3.2" else ""} \
      ~{if (phylip_three_dot_two_m_one_zero) then "-phylip3.2_m10" else ""}
  >>>
  parameter_meta {
    in: "Input file in several formats."
    out: "Output file name (default STDOUT)."
    format: "Print information about input file format and if sequences are aligned or not."
    type: "Print information about biological sequences datatype (e.g. nucleotides:dna, nucleotides:rna, aminoacids, etc)"
    info: "Print information about sequences number, average sequence length, max & min sequence length"
    only_seqs: "Generate output with only residues from input file"
    html: "Output residues colored according their physicochemical properties. HTML file."
    reverse: "Output the reverse of sequences in input file."
    nbr_f: "Output file in NBRF/PIR format"
    mega: "Output file in MEGA format"
    nexus: "Output file in NEXUS format"
    clustal: "Output file in CLUSTAL format"
    fast_a: "Output file in FASTA format"
    fast_a_m_one_zero: "Output file in FASTA format. Sequences name up to 10 characters."
    phylip: "Output file in PHYLIP/PHYLIP4 format"
    phylip_m_one_zero: "Output file in PHYLIP/PHYLIP4 format. Sequences name up to 10 characters."
    phylip_paml: "Output file in PHYLIP format compatible with PAML"
    phylip_paml_m_one_zero: "Output file in PHYLIP format compatible with PAML. Sequences name up to 10 characters."
    phylip_three_dot_two: "Output file in PHYLIP3.2 format"
    phylip_three_dot_two_m_one_zero: "Output file in PHYLIP3.2 format. Sequences name up to 10 characters."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_html = "${in_html}"
    File out_nbr_f = "${in_nbr_f}"
    File out_mega = "${in_mega}"
    File out_nexus = "${in_nexus}"
    File out_clustal = "${in_clustal}"
    File out_fast_a = "${in_fast_a}"
    File out_fast_a_m_one_zero = "${in_fast_a_m_one_zero}"
    File out_phylip = "${in_phylip}"
    File out_phylip_m_one_zero = "${in_phylip_m_one_zero}"
    File out_phylip_paml = "${in_phylip_paml}"
    File out_phylip_paml_m_one_zero = "${in_phylip_paml_m_one_zero}"
    File out_phylip_three_dot_two = "${in_phylip_three_dot_two}"
    File out_phylip_three_dot_two_m_one_zero = "${in_phylip_three_dot_two_m_one_zero}"
  }
}