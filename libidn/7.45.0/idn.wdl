version 1.0

task Idn {
  input {
    Boolean stringprepStringprep
    Boolean punycodePunycodeDecode
    Boolean punycodePunycodeEncode
    Boolean iIDnaToAscii
    Boolean iIDnaToUnicode
    Boolean allowAllowUnassigned
    Boolean usestd3asciiUsestd3asciiRules
    Boolean noNoTld
    Boolean nfkNfkC
    String profileProfile
    Boolean debugDebug
    Boolean quietQuiet
  }
  command <<<
    idn \
      ~{true="--stringprep" false="" stringprepStringprep} \
      ~{true="--punycode-decode" false="" punycodePunycodeDecode} \
      ~{true="--punycode-encode" false="" punycodePunycodeEncode} \
      ~{true="--idna-to-ascii" false="" iIDnaToAscii} \
      ~{true="--idna-to-unicode" false="" iIDnaToUnicode} \
      ~{true="--allow-unassigned" false="" allowAllowUnassigned} \
      ~{true="--usestd3asciirules" false="" usestd3asciiUsestd3asciiRules} \
      ~{true="--no-tld" false="" noNoTld} \
      ~{true="--nfkc" false="" nfkNfkC} \
      ~{if defined(profileProfile) then ("--profile " +  '"' + profileProfile + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}