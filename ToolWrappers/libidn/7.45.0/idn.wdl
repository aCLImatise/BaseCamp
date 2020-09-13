version 1.0

task Idn {
  input {
    Boolean? stringprep
    Boolean? punycode_decode
    Boolean? punycode_encode
    Boolean? i_dna_to_ascii
    Boolean? i_dna_to_unicode
    Boolean? allow_unassigned
    Boolean? use_std_three_ascii_rules
    Boolean? no_tld
    Boolean? nfk_c
    String? profile
    Boolean? debug
    Boolean? quiet
  }
  command <<<
    idn \
      ~{if (stringprep) then "--stringprep" else ""} \
      ~{if (punycode_decode) then "--punycode-decode" else ""} \
      ~{if (punycode_encode) then "--punycode-encode" else ""} \
      ~{if (i_dna_to_ascii) then "--idna-to-ascii" else ""} \
      ~{if (i_dna_to_unicode) then "--idna-to-unicode" else ""} \
      ~{if (allow_unassigned) then "--allow-unassigned" else ""} \
      ~{if (use_std_three_ascii_rules) then "--usestd3asciirules" else ""} \
      ~{if (no_tld) then "--no-tld" else ""} \
      ~{if (nfk_c) then "--nfkc" else ""} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    stringprep: "Prepare string according to nameprep profile"
    punycode_decode: "Decode Punycode"
    punycode_encode: "Encode Punycode"
    i_dna_to_ascii: "Convert to ACE according to IDNA (default mode)"
    i_dna_to_unicode: "Convert from ACE according to IDNA"
    allow_unassigned: "Toggle IDNA AllowUnassigned flag (default off)"
    use_std_three_ascii_rules: "Toggle IDNA UseSTD3ASCIIRules flag (default off)"
    no_tld: "Don't check string for TLD specific rules\\nOnly for --idna-to-ascii and --idna-to-unicode"
    nfk_c: "Normalize string according to Unicode v3.2 NFKC"
    profile: "Use specified stringprep profile instead\\nValid stringprep profiles: `Nameprep',\\n`iSCSI', `Nodeprep', `Resourceprep',\\n`trace', `SASLprep'"
    debug: "Print debugging information"
    quiet: "Silent operation"
  }
  output {
    File out_stdout = stdout()
  }
}