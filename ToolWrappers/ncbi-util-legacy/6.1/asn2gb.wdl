version 1.0

task Asn2gb {
  input {
    Boolean? input_file_name
    File? output_file_name
    Boolean? format_b_genbank
    Boolean? mode_r_release
    Boolean? style_normal_segment
    Boolean? bit_flags_xml
    Boolean? custom_flags_hidefeats
    Boolean? asn_typesingle_record
    Boolean? batch_report_sequinrelease
    Boolean? input_file_binary
    Boolean? batch_file_compressed
    Boolean? propagate_top_descriptors
    File? log_file_optional
    Boolean? remote_fetching_optionaldefault
    Boolean? accession_fetch_accessionretcodeflags
    Boolean? remote_annotation_fetch
    Boolean? ffdiff_executable_optionaldefault
    Boolean? asnflat_executable_optionaldefault
    Boolean? seqloc_from_optionaldefault
    Boolean? seqloc_to_optionaldefault
    Boolean? seqloc_minus_strand
    Boolean? feature_itemid_optionaldefault
  }
  command <<<
    asn2gb \
      ~{if (input_file_name) then "-i" else ""} \
      ~{if (output_file_name) then "-o" else ""} \
      ~{if (format_b_genbank) then "-f" else ""} \
      ~{if (mode_r_release) then "-m" else ""} \
      ~{if (style_normal_segment) then "-s" else ""} \
      ~{if (bit_flags_xml) then "-g" else ""} \
      ~{if (custom_flags_hidefeats) then "-u" else ""} \
      ~{if (asn_typesingle_record) then "-a" else ""} \
      ~{if (batch_report_sequinrelease) then "-t" else ""} \
      ~{if (input_file_binary) then "-b" else ""} \
      ~{if (batch_file_compressed) then "-c" else ""} \
      ~{if (propagate_top_descriptors) then "-p" else ""} \
      ~{if (log_file_optional) then "-l" else ""} \
      ~{if (remote_fetching_optionaldefault) then "-r" else ""} \
      ~{if (accession_fetch_accessionretcodeflags) then "-A" else ""} \
      ~{if (remote_annotation_fetch) then "-F" else ""} \
      ~{if (ffdiff_executable_optionaldefault) then "-q" else ""} \
      ~{if (asnflat_executable_optionaldefault) then "-n" else ""} \
      ~{if (seqloc_from_optionaldefault) then "-j" else ""} \
      ~{if (seqloc_to_optionaldefault) then "-k" else ""} \
      ~{if (seqloc_minus_strand) then "-d" else ""} \
      ~{if (feature_itemid_optionaldefault) then "-y" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_name: "Input File Name [File In]\\ndefault = stdin"
    output_file_name: "Output File Name [File Out]\\ndefault = stdout"
    format_b_genbank: "Format (b GenBank, e EMBL, p GenPept, t Feature Table, x INSDSet) [String]\\ndefault = b"
    mode_r_release: "Mode (r Release, e Entrez, s Sequin, d Dump) [String]\\ndefault = s"
    style_normal_segment: "Style (n Normal, s Segment, m Master, c Contig) [String]\\ndefault = n"
    bit_flags_xml: "Bit Flags (1 HTML, 2 XML, 4 ContigFeats, 8 ContigSrcs, 16 FarTransl) [Integer]\\ndefault = 0"
    custom_flags_hidefeats: "Custom Flags (4 HideFeats, 1792 HideRefs, 8192 HideSources, 262144 HideTranslation) [Integer]\\ndefault = 0"
    asn_typesingle_record: "ASN.1 Type\\nSingle Record: a Any, e Seq-entry, b Bioseq, s Bioseq-set, m Seq-submit, q Catenated\\nRelease File: t Batch Bioseq-set, u Batch Seq-submit"
    batch_report_sequinrelease: "Batch\\n1 Report\\n2 Sequin/Release\\n3 asn2gb SSEC/nocleanup\\n4 asn2flat BSEC/nocleanup\\n5 asn2gb/asn2flat\\n6 asn2gb NEW dbxref/OLD dbxref\\n7 oldasn2gb/newasn2gb [Integer]\\ndefault = 0\\nrange from 0 to 7"
    input_file_binary: "Input File is Binary [T/F]  Optional\\ndefault = F"
    batch_file_compressed: "Batch File is Compressed [T/F]  Optional\\ndefault = F"
    propagate_top_descriptors: "Propagate Top Descriptors [T/F]  Optional\\ndefault = F"
    log_file_optional: "Log file [File Out]  Optional"
    remote_fetching_optionaldefault: "Remote Fetching [T/F]  Optional\\ndefault = F"
    accession_fetch_accessionretcodeflags: "Accession to Fetch (or Accession,retcode,flags where flags -1 fetches external features) [String]  Optional"
    remote_annotation_fetch: "Remote Annotation Fetch Test (use -A Accession,0,-1 instead) [T/F]  Optional\\ndefault = F"
    ffdiff_executable_optionaldefault: "Ffdiff Executable [File In]  Optional\\ndefault = /netopt/genbank/subtool/bin/ffdiff"
    asnflat_executable_optionaldefault: "Asn2Flat Executable [File In]  Optional\\ndefault = asn2flat"
    seqloc_from_optionaldefault: "SeqLoc From [Integer]  Optional\\ndefault = 0"
    seqloc_to_optionaldefault: "SeqLoc To [Integer]  Optional\\ndefault = 0"
    seqloc_minus_strand: "SeqLoc Minus Strand [T/F]  Optional\\ndefault = F"
    feature_itemid_optionaldefault: "Feature itemID [Integer]  Optional\\ndefault = 0\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
    File out_log_file_optional = "${in_log_file_optional}"
  }
}