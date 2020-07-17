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
    String? option
  }
  command <<<
    idn \
      ~{option} \
      ~{true="--stringprep" false="" stringprep} \
      ~{true="--punycode-decode" false="" punycode_decode} \
      ~{true="--punycode-encode" false="" punycode_encode} \
      ~{true="--idna-to-ascii" false="" i_dna_to_ascii} \
      ~{true="--idna-to-unicode" false="" i_dna_to_unicode} \
      ~{true="--allow-unassigned" false="" allow_unassigned} \
      ~{true="--usestd3asciirules" false="" use_std_three_ascii_rules} \
      ~{true="--no-tld" false="" no_tld} \
      ~{true="--nfkc" false="" nfk_c} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    stringprep: "Prepare string according to nameprep profile"
    punycode_decode: "Decode Punycode"
    punycode_encode: "Encode Punycode"
    i_dna_to_ascii: "Convert to ACE according to IDNA (default mode)"
    i_dna_to_unicode: "Convert from ACE according to IDNA"
    allow_unassigned: "Toggle IDNA AllowUnassigned flag (default off)"
    use_std_three_ascii_rules: "Toggle IDNA UseSTD3ASCIIRules flag (default off)"
    no_tld: "Don't check string for TLD specific rules Only for --idna-to-ascii and --idna-to-unicode"
    nfk_c: "Normalise string according to Unicode v3.2 NFKC"
    profile: "Use specified stringprep profile instead Valid stringprep profiles: `Nameprep', `iSCSI', `Nodeprep', `Resourceprep',  `trace', `SASLprep'"
    debug: "Print debugging information"
    quiet: "Silent operation"
    option: ""
  }
}