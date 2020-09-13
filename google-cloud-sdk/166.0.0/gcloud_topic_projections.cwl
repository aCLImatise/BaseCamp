class: CommandLineTool
id: ../../../gcloud_topic_projections.cwl
inputs:
- id: in_projections
  doc: "A projection is a list of keys that selects resource data values.\nProjections\
    \ are used in --format flag expressions. For example, the table\nformat requires\
    \ a projection that describes the table columns:\ntable(name, network.ip.internal,\
    \ network.ip.external, uri())"
  type: string
  inputBinding:
    position: 0
- id: in_transforms
  doc: "A transform formats resource data values. Each projection key may have zero\n\
    or more transform calls:\n_key_._transform_([arg...])...\nThis example applies\
    \ the foo() and then the bar() transform to the\nstatus.time resource value:\n\
    (name, status.time.foo().bar())\nThe builtin transform functions are:\nalways()\n\
    Marks a transform sequence to always be applied.\nIn some cases transforms are\
    \ disabled. Prepending always() to a\ntransform sequence causes the sequence to\
    \ always be evaluated.\nFor example:\nsome_field.always().foo().bar()\nAlways\
    \ applies foo() and then bar().\nbasename(undefined=\"\")\nReturns the last path\
    \ component.\nThe arguments are:\nundefined\nReturns this value if the resource\
    \ or basename is empty.\ncollection(undefined=\"\")\nReturns the current resource\
    \ collection.\nThe arguments are:\nundefined\nThis value is returned if r or the\
    \ collection is empty.\ncolor(red, yellow, green, blue)\nColorizes the resource\
    \ string value.\nThe red, yellow, green and blue args are RE patterns, matched\
    \ against\nthe resource in order. The first pattern that matches colorizes the\n\
    matched substring with that color, and the other patterns are skipped.\nThe arguments\
    \ are:\nred\nThe substring pattern for the color red.\nyellow\nThe substring pattern\
    \ for the color yellow.\ngreen\nThe substring pattern for the color green.\nblue\n\
    The substring pattern for the color blue.\nFor example:\ncolor(red=STOP,yellow=CAUTION,green=GO)\n\
    For the resource string \"CAUTION means GO FASTER\" displays the\nsubstring \"\
    CAUTION\" in yellow.\ncount()\nCounts the number of each item in the list.\nA\
    \ string resource is treated as a list of characters.\nFor example:\n\"b/a/b/c\"\
    .split(\"/\").count()\nReturns {a: 1, b: 2, c: 1}.\ndate(format=\"%Y-%m-%dT%H:%M:%S\"\
    , unit=1, undefined=\"\", tz, tz_default)\nFormats the resource as a strftime()\
    \ format.\nThe arguments are:\nformat\nThe strftime(3) format.\nunit\nIf the resource\
    \ is a Timestamp then divide by unit to yield\nseconds.\nundefined\nReturns this\
    \ value if the resource is not a valid time.\ntz\nReturn the time relative to\
    \ the tz timezone if specified, the\nexplicit timezone in the resource if it has\
    \ one, otherwise the\nlocal timezone. For example, ...date(tz=EST5EDT, tz_default=UTC).\n\
    tz_default\nThe default timezone if the resource does not have a timezone\nsuffix.\n\
    decode(encoding, undefined=\"\")\nReturns the decoded value of the resource that\
    \ was encoded by encoding.\nThe arguments are:\nencoding\nThe encoding name. base64\
    \ and utf-8 are supported.\nundefined\nReturns this value if the decoding fails.\n\
    duration(start=\"\", end=\"\", parts=3, precision=3, calendar=true, unit=1, undefined=\"\
    \")\nFormats the resource as an ISO 8601 duration string.\nThe ISO 8601 Duration\n\
    (https://en.wikipedia.org/wiki/ISO_8601#Durations) format is:\n\"[-]P[nY][nM][nD][T[nH][nM][n[.m]S]]\"\
    . The 0 duration is \"P0\".\nOtherwise at least one part will always be displayed.\
    \ Negative\ndurations are prefixed by \"-\". \"T\" disambiguates months \"P2M\"\
    \ to the\nleft of \"T\" and minutes \"PT5M\" to the right.\nIf the resource is\
    \ a datetime then the duration of resource -\ncurrent_time is returned.\nThe arguments\
    \ are:\nstart\nThe name of a start time attribute in the resource. The duration\
    \ of\nthe end - start time attributes in resource is returned. If end is\nnot\
    \ specified then the current time is used.\nend\nThe name of an end time attribute\
    \ in the resource. Defaults to the\ncurrent time if omitted. Ignored if start\
    \ is not specified.\nparts\nFormat at most this many duration parts starting with\
    \ largest\nnon-zero part.\nprecision\nFormat the last duration part with precision\
    \ digits after the\ndecimal point. Trailing \"0\" and \".\" are always stripped.\n\
    calendar\nAllow time units larger than hours in formated durations if true.\n\
    Durations specifying hours or smaller units are exact across\ndaylight savings\
    \ time boundaries. On by default. Use calendar=false\nto disable. For example,\
    \ if calendar=true then at the daylight\nsavings boundary 2016-03-13T01:00:00\
    \ + P1D => 2016-03-14T01:00:00\nbut 2016-03-13T01:00:00 + PT24H => 2016-03-14T03:00:00.\
    \ Similarly,\na +P1Y duration will be inexact but \"calendar correct\", yielding\n\
    the same month and day number next year, even in leap years.\nunit\nDivide the\
    \ resource numeric value by unit to yield seconds.\nundefined\nReturns this value\
    \ if the resource is not a valid timestamp.\nFor example:\nduration(start=createTime,end=updateTime)\n\
    The duration from resource creation to the most recent update.\nupdateTime.duration()\n\
    The duration since the most recent resource update.\nencode(encoding, undefined=\"\
    \")\nReturns the encoded value of the resource using encoding.\nThe arguments\
    \ are:\nencoding\nThe encoding name. base64 and utf-8 are supported.\nundefined\n\
    Returns this value if the encoding fails.\nenum(enums, inverse=false, undefined=\"\
    \")\nReturns the enums dictionary description for the resource.\nThe arguments\
    \ are:\nenums\nThe name of a message enum dictionary.\ninverse\nDo inverse lookup\
    \ if true.\nundefined\nReturns this value if there is no matching enum description.\n\
    error(message)\nRaises an Error exception that does not generate a stack trace.\n\
    The arguments are:\nmessage\nAn error message. If not specified then the resource\
    \ is formatted\nas the error message.\nextract(keys)\nExtract an ordered list\
    \ of values from the resource for the specified\nkeys.\nThe arguments are:\nkeys\n\
    The list of keys in the resource whose associated values will be\nincluded in\
    \ the result.\nfatal(message)\nRaises an InternalError exception that generates\
    \ a stack trace.\nThe arguments are:\nmessage\nAn error message. If not specified\
    \ then the resource is formatted\nas the error message.\nfirstof(keys)\nReturns\
    \ the first non-empty attribute value for key in keys.\nThe arguments are:\nkeys\n\
    Keys to check for resource attribute values,\nFor example:\nx.firstof(bar_foo,\
    \ barFoo, BarFoo, BAR_FOO)\nChecks x.bar_foo, x.barFoo, x.BarFoo, and x.BAR_FOO\
    \ in order for\nthe first non-empty value.\nfloat(precision=6, spec, undefined=\"\
    \")\nReturns the string representation of a floating point number.\nOne of these\
    \ formats is used (1) \". precision spec\" if spec is\nspecified (2) \". precision\"\
    \ unless 1e-04 <= abs(number) < 1e+09 (3)\n\".1f\" otherwise.\nThe arguments are:\n\
    precision\nThe maximum number of digits before and after the decimal point.\n\
    spec\nThe printf(3) floating point format \"e\", \"f\" or \"g\" spec character.\n\
    undefined\nReturns this value if the resource is not a float.\nformat(fmt, args)\n\
    Formats resource key values.\nThe arguments are:\nfmt\nThe format string with\
    \ {0} ... {nargs-1} references to the resource\nattribute name arg values.\nargs\n\
    The resource attribute key expression to format. The printer\nprojection symbols\
    \ and aliases may be used in key expressions. If\nno args are specified then the\
    \ resource is used as the arg list if\nit is a list, otherwise the resource is\
    \ used as the only arg.\nFor example:\n--format='value(format(\"{0:f.1}/{1:f.1}\"\
    , q.CPU.default, q.CPU.limit))'\nFormats q.CPU.default and q.CPU.limit as floating\
    \ point numbers.\ngroup(keys)\nFormats a [...] grouped list.\nEach group is enclosed\
    \ in [...]. The first item separator is ':',\nsubsequent separators are ','. [item1]\
    \ [item1] ... [item1: item2] ...\n[item1: item2] [item1: item2, item3] ... [item1:\
    \ item2, item3]\nThe arguments are:\nkeys\nOptional attribute keys to select from\
    \ the list. Otherwise the\nstring value of each list item is selected.\nif(expr)\n\
    Disables the projection key if the flag name filter expr is false.\nThe arguments\
    \ are:\nexpr\nA command flag filter name expression. See gcloud topic filters\
    \ for\ndetails on filter expressions. The expression variables are flag\nnames\
    \ without the leading -- prefix and dashes replaced by\nunderscores.\nFor example:\n\
    table(name, value.if(NOT short_format))\nLists a value column if the --short-format\
    \ command line flag is not\nspecified.\niso(undefined=\"T\")\nFormats the resource\
    \ to numeric ISO time format.\nThe arguments are:\nundefined\nReturns this value\
    \ if the resource does not have an isoformat()\nattribute.\njoin(sep=\"/\", undefined=\"\
    \")\nJoins the elements of the resource list by the value of sep.\nA string resource\
    \ is treated as a list of characters.\nThe arguments are:\nsep\nThe separator\
    \ value to use when joining.\nundefined\nReturns this value if the result after\
    \ joining is empty.\nFor example:\n\"a/b/c/d\".split(\"/\").join(\"!\")\nReturns\
    \ \"a!b!c!d\".\nlen()\nReturns the length of the resource if it is non-empty,\
    \ 0 otherwise.\nlist(show=\"\", undefined=\"\", separator=\",\")\nFormats a dict\
    \ or list into a compact comma separated list.\nThe arguments are:\nshow\nIf show=keys\
    \ then list dict keys; if show=values then list dict\nvalues; otherwise list dict\
    \ key=value pairs.\nundefined\nReturn this if the resource is empty.\nseparator\n\
    The list item separator string.\nmap(depth=1)\nApplies the next transform in the\
    \ sequence to each resource list item.\nThe arguments are:\ndepth\nThe list nesting\
    \ depth.\nFor example:\nlist_field.map().foo().list()\nApplies foo() to each item\
    \ in list_field and then list() to the\nresulting value to return a compact comma-separated\
    \ list.\nlist_field.map().foo().map().bar()\nApplies foo() to each item in list_field\
    \ and then bar() to each\nitem in the resulting list.\nabc.xyz.map(2).foo()\n\
    Applies foo() to each item in xyz[] for all items in abc[].\nnotnull()\nRemove\
    \ null values from the resource list.\nresolution(undefined=\"\", transpose=false)\n\
    Formats a human readable XY resolution.\nThe arguments are:\nundefined\nReturns\
    \ this value if a recognizable resolution was not found.\ntranspose\nReturns the\
    \ y/x resolution if true.\nscope(args)\nGets the /args/ suffix from a URI.\nThe\
    \ arguments are:\nargs\nOptional URI segment names. If not specified then 'regions',\n\
    'zones' is assumed.\nFor example:\n\"https://abc/foo/projects/bar/xyz\".scope(\"\
    projects\")\nReturns \"bar/xyz\".\n\"https://xyz/foo/regions/abc\".scope()\nReturns\
    \ \"abc\".\nsegment(index=-1, undefined=\"\")\nReturns the index-th URI path segment.\n\
    The arguments are:\nindex\nThe path segment index to return counting from 0.\n\
    undefined\nReturns this value if the resource or segment index is empty.\nsize(zero=\"\
    0\", precision=1, units_in, units_out, min=0)\nFormats a human readable size in\
    \ bytes.\nThe arguments are:\nzero\nReturns this if size==0. Ignored if None.\n\
    precision\nThe number of digits displayed after the decimal point.\nunits_in\n\
    A unit suffix (only the first character is checked) or unit size.\nThe size is\
    \ multiplied by this. The default is 1.0.\nunits_out\nA unit suffix (only the\
    \ first character is checked) or unit size.\nThe size is divided by this. The\
    \ default is 1.0.\nmin\nSizes < min will be listed as \"< min\".\nslice(op=\"\
    :\", undefined=\"\")\nReturns a list slice specified by op.\nThe op parameter\
    \ consists of up to three colon-delimeted integers:\nstart, end, and step. The\
    \ parameter supports half-open ranges: start\nand end values can be omitted, representing\
    \ the first and last\npositions of the resource respectively.\nThe step value\
    \ represents the increment between items in the resource\nincluded in the slice.\
    \ A step of 2 results in a slice that contains\nevery other item in the resource.\n\
    Negative values for start and end indicate that the positons should\nstart from\
    \ the last position of the resource. A negative value for step\nindicates that\
    \ the slice should contain items in reverse order.\nIf op contains no colons,\
    \ the slice consists of the single item at the\nspecified position in the resource.\n\
    The arguments are:\nop\nThe slice operation.\nundefined\nReturns this value if\
    \ the slice cannot be created, or the resulting\nslice is empty.\nFor example:\n\
    [1,2,3].slice(1:)\nReturns [2,3].\n[1,2,3].slice(:2)\nReturns [1,2].\n[1,2,3].slice(-1:)\n\
    Returns [3].\n[1,2,3].slice(: :-1)\nReturns [3,2,1].\n[1,2,3].slice(1)\nReturns\
    \ [2].\nsort(attr=\"\")\nSorts the elements of the resource list by a given attribute\
    \ (or\nitself).\nA string resource is treated as a list of characters.\nThe arguments\
    \ are:\nattr\nThe optional field of an object or dict by which to sort.\nFor example:\n\
    \"b/a/d/c\".split(\"/\").sort()\nReturns \"[a, b, c, d]\".\nsplit(sep=\"/\", undefined=\"\
    \")\nSplits a string by the value of sep.\nThe arguments are:\nsep\nThe separator\
    \ value to use when splitting.\nundefined\nReturns this value if the result after\
    \ splitting is empty.\nFor example:\n\"a/b/c/d\".split()\nReturns [\"a\", \"b\"\
    , \"c\", \"d\"].\nsub(pattern, replacement, count=0, ignorecase=true)\nReplaces\
    \ a pattern matched in a string with the given replacement.\nReturn the string\
    \ obtained by replacing the leftmost non-overlapping\noccurrences of pattern in\
    \ the string by replacement. If the pattern\nisn't found, then the original string\
    \ is returned unchanged.\nThe arguments are:\npattern\nThe regular expression\
    \ pattern to match in r that we want to\nreplace with something.\nreplacement\n\
    The value to substitute into whatever pattern is matched.\ncount\nThe max number\
    \ of pattern occurrences to be replaced. Must be\nnon-negative. If omitted or\
    \ zero, all occurrences will be replaces.\nignorecase\nWhether to perform case-insensitive\
    \ matching.\nFor example:\ntable(field.sub(\" there\", \"\"))\nIf the field string\
    \ is \"hey there\" it will be displayed as \"hey\".\nsynthesize(args)\nSynthesizes\
    \ a new resource from the schema arguments.\nA list of tuple arguments controls\
    \ the resource synthesis. Each tuple\nis a schema that defines the synthesis of\
    \ one resource list item. Each\nschema item defines the synthesis of one synthesized_resource\
    \ attribute\nfrom an original_resource attribute.\nThere are three kinds of schema\
    \ items:\nname:literal\nThe value for the name attribute in the synthesized resource\
    \ is the\nliteral value.\nname=key\nThe value for the name attribute in the synthesized_resource\
    \ is the\nvalue of key in the original_resource.\nkey\nAll the attributes of the\
    \ value of key in the original_resource are\nadded to the attributes in the synthesized_resource.\n\
    The arguments are:\nargs\nThe list of schema tuples.\nFor example:\nThis returns\
    \ a list of two resource items\nsynthesize((name:up, upInfo), (name:down, downInfo))\n\
    If upInfo and downInfo serialize to\n{\"foo\": 1, \"bar\": \"yes\"}\nand\n{\"\
    foo\": 0, \"bar\": \"no\"}\nthen the synthesized resource list is\n[{\"name\"\
    : \"up\", \"foo\": 1, \"bar\": \"yes\"}, {\"name\": \"down\", \"foo\": 0,\n\"\
    bar\": \"no\"}]\nThis could then be displayed by a nested table using\nsynthesize(...):format=\"\
    table(name, foo, bar)\"\nuri(undefined=\".\")\nGets the resource URI.\nThe arguments\
    \ are:\nundefined\nReturns this if a the URI for r cannot be determined.\nyesno(yes,\
    \ no=\"No\")\nReturns no if the resource is empty, yes or the resource itself\n\
    otherwise.\nThe arguments are:\nyes\nIf the resource is not empty then returns\
    \ yes or the resource\nitself if yes is not defined.\nno\nReturns this value if\
    \ the resource is empty.\nThe cloudbuild transform functions are:\nbuild_images(undefined=\"\
    \")\nReturns the formatted build results images.\nThe arguments are:\nundefined\n\
    Returns this value if the resource cannot be formatted.\nbuild_source(undefined=\"\
    \")\nReturns the formatted build source.\nThe arguments are:\nundefined\nReturns\
    \ this value if the resource cannot be formatted.\nThe compute transform functions\
    \ are:\nfirewall_rule(undefined=\"\")\nReturns a compact string describing a firewall\
    \ rule.\nThe compact string is a comma-separated list of PROTOCOL:PORT_RANGE\n\
    items. If a particular protocol has no port ranges then only the\nprotocol is\
    \ listed.\nThe arguments are:\nundefined\nReturns this value if the resource cannot\
    \ be formatted.\nimage_alias(undefined=\"\")\nReturns a comma-separated list of\
    \ alias names for an image.\nThe arguments are:\nundefined\nReturns this value\
    \ if the resource cannot be formatted.\nlocation(undefined=\"\")\nReturn the region\
    \ or zone name.\nThe arguments are:\nundefined\nReturns this value if the resource\
    \ cannot be formatted.\nlocation_scope(undefined=\"\")\nReturn the location scope\
    \ name, either region or zone.\nThe arguments are:\nundefined\nReturns this value\
    \ if the resource cannot be formatted.\nmachine_type()\nReturn the formatted name\
    \ for a machine type.\nnext_maintenance(undefined=\"\")\nReturns the timestamps\
    \ of the next scheduled maintenance.\nAll timestamps are assumed to be ISO strings\
    \ in the same timezone.\nThe arguments are:\nundefined\nReturns this value if\
    \ the resource cannot be formatted.\noperation_http_status(undefined=\"\")\nReturns\
    \ the HTTP response code of an operation.\nThe arguments are:\nundefined\nReturns\
    \ this value if there is no response code.\nproject(undefined=\"\")\nReturns a\
    \ project name from a selfLink.\nThe arguments are:\nundefined\nReturns this value\
    \ if the resource cannot be formatted.\nquota(undefined=\"\")\nFormats a quota\
    \ as usage/limit.\nThe arguments are:\nundefined\nReturns this value if the resource\
    \ cannot be formatted.\nstatus(undefined=\"\")\nReturns the machine status with\
    \ deprecation information if applicable.\nThe arguments are:\nundefined\nReturns\
    \ this value if the resource cannot be formatted.\nzone(undefined=\"\")\nReturns\
    \ a zone name from a selfLink.\nThe arguments are:\nundefined\nReturns this value\
    \ if the resource cannot be formatted.\nThe container transform functions are:\n\
    master_version(undefined=\"\")\nReturns the formatted master version.\nThe arguments\
    \ are:\nundefined\nReturns this value if the resource cannot be formatted.\nThe\
    \ debug transform functions are:\nfull_status(undefined=\"UNKNOWN_ERROR\")\nReturns\
    \ a full description of the status of a logpoint or snapshot.\nStatus will be\
    \ one of ACTIVE, COMPLETED, or a verbose error\ndescription. If the status is\
    \ an error, there will be additional\ninformation available in the status field\
    \ of the object.\nThe arguments are:\nundefined\nReturns this value if the resource\
    \ is not a valid status.\nFor example:\n--format=\"table(id, location, full_status())\"\
    \nDisplays the full status in the third table problem.\nshort_status(undefined=\"\
    UNKNOWN_ERROR\")\nReturns a short description of the status of a logpoint or snapshot.\n\
    Status will be one of ACTIVE, COMPLETED, or a short error description.\nIf the\
    \ status is an error, there will be additional information\navailable in the status\
    \ field of the object.\nThe arguments are:\nundefined\nReturns this value if the\
    \ resource is not a valid status.\nFor example:\n--format=\"table(id, location,\
    \ short_status())\"\nDisplays the short status in the third table problem.\nThe\
    \ functions transform functions are:\ntrigger(undefined=\"\")\nReturns textual\
    \ information about functions trigger.\nThe arguments are:\nundefined\nReturns\
    \ this value if the resource cannot be formatted.\nThe runtime_config transform\
    \ functions are:\nwaiter_status(undefined=\"\")\nReturns a short description of\
    \ the status of a waiter or waiter\noperation.\nStatus will be one of WAITING,\
    \ SUCCESS, FAILURE, or TIMEOUT.\nThe arguments are:\nundefined\nReturns this value\
    \ if the resource status cannot be determined.\nFor example:\n--format=\"table(name,\
    \ status())\"\nDisplays the status in table column two."
  type: string
  inputBinding:
    position: 1
- id: in_left
  doc: Left (default).
  type: string
  inputBinding:
    position: 0
- id: in_center
  doc: Center.
  type: string
  inputBinding:
    position: 1
- id: in_right
  doc: Right.
  type: string
  inputBinding:
    position: 2
- id: in_angry_snake_case_dot
  doc: '[no-]reverse'
  type: string
  inputBinding:
    position: 0
- id: in_wrap
  doc: "Enables the column text to be wrapped if the table would otherwise be\ntoo\
    \ wide for the display."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gcloud
- topic
- projections
