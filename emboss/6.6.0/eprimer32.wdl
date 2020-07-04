version 1.0

task Eprimer32 {
  input {
    Boolean? hybrid_probe
    Boolean? num_return
    Boolean? included_region
    Boolean? target_region
    Boolean? excluded_region
    Boolean? forward_input
    Boolean? reverse_input
    Boolean? ok_left_region
    Boolean? ok_right_region
  }
  command <<<
    eprimer32 \
      ~{true="-hybridprobe" false="" hybrid_probe} \
      ~{true="-numreturn" false="" num_return} \
      ~{true="-includedregion" false="" included_region} \
      ~{true="-targetregion" false="" target_region} \
      ~{true="-excludedregion" false="" excluded_region} \
      ~{true="-forwardinput" false="" forward_input} \
      ~{true="-reverseinput" false="" reverse_input} \
      ~{true="-okleftregion" false="" ok_left_region} \
      ~{true="-okrightregion" false="" ok_right_region}
  >>>
  parameter_meta {
    hybrid_probe: "toggle     [N] An 'internal oligo' is intended to be used as a hybridization probe (hyb probe) to detect the PCR product after amplification."
    num_return: "integer    [5] The maximum number of primer pairs to return. Primer pairs returned are sorted by their 'quality', in other words by the value of the objective function (where a lower number indicates a better primer pair). Caution: setting this parameter to a large value will increase running time. (Integer 0 or more)"
    included_region: "range      [(full sequence)] A sub-region of the given sequence in which to pick primers. For example, often the first dozen or so bases of a sequence are vector, and should be excluded from consideration. The value for this parameter has the form (start),(end) where (start) is the index of the first base to consider, and (end) is the last in the primer-picking region."
    target_region: "range      [(full sequence)] If one or more Targets is specified then a legal primer pair must flank at least one of them. A Target might be a simple sequence repeat site (for example a CA repeat) or a single-base-pair polymorphism. The value should be a space-separated list of (start),(end) pairs where (start) is the index of the first base of a Target, and (end) is the last E.g. 50,51 requires primers to surround the 2 bases at positions 50 and 51."
    excluded_region: "range      [(full sequence)] Primer oligos may not overlap any region specified in this tag. The associated value must be a space-separated list of (start),(end) pairs where (start) is the index of the first base of the excluded region, and and (end) is the last. This tag is useful for tasks such as excluding regions of low sequence quality or for excluding regions containing repetitive elements such as ALUs or LINEs. E.g. 401,407 68,70 forbids selection of primers in the 7 bases starting at 401 and the 3 bases at 68."
    forward_input: "string     The sequence of a forward primer to check and around which to design reverse primers and optional internal oligos. Must be a substring of SEQUENCE. (Any string)"
    reverse_input: "string     The sequence of a reverse primer to check and around which to design forward primers and optional internal oligos. Must be a substring of the reverse strand of SEQUENCE. (Any string)"
    ok_left_region: "range      [(full sequence)] Possible left primer of pair location"
    ok_right_region: "range      [(full sequence)] Possible right primer of pair location"
  }
}