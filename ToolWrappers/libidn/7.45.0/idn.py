from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Idn_V0_1_0 = CommandToolBuilder(tool="idn", base_command=["idn"], inputs=[ToolInput(tag="in_stringprep", input_type=Boolean(optional=True), prefix="--stringprep", doc=InputDocumentation(doc="Prepare string according to nameprep profile")), ToolInput(tag="in_punycode_decode", input_type=Boolean(optional=True), prefix="--punycode-decode", doc=InputDocumentation(doc="Decode Punycode")), ToolInput(tag="in_punycode_encode", input_type=Boolean(optional=True), prefix="--punycode-encode", doc=InputDocumentation(doc="Encode Punycode")), ToolInput(tag="in_i_dna_to_ascii", input_type=Boolean(optional=True), prefix="--idna-to-ascii", doc=InputDocumentation(doc="Convert to ACE according to IDNA (default mode)")), ToolInput(tag="in_i_dna_to_unicode", input_type=Boolean(optional=True), prefix="--idna-to-unicode", doc=InputDocumentation(doc="Convert from ACE according to IDNA")), ToolInput(tag="in_allow_unassigned", input_type=Boolean(optional=True), prefix="--allow-unassigned", doc=InputDocumentation(doc="Toggle IDNA AllowUnassigned flag (default off)")), ToolInput(tag="in_use_std_three_ascii_rules", input_type=Boolean(optional=True), prefix="--usestd3asciirules", doc=InputDocumentation(doc="Toggle IDNA UseSTD3ASCIIRules flag (default off)")), ToolInput(tag="in_no_tld", input_type=Boolean(optional=True), prefix="--no-tld", doc=InputDocumentation(doc="Don't check string for TLD specific rules\nOnly for --idna-to-ascii and --idna-to-unicode")), ToolInput(tag="in_nfk_c", input_type=Boolean(optional=True), prefix="--nfkc", doc=InputDocumentation(doc="Normalize string according to Unicode v3.2 NFKC")), ToolInput(tag="in_profile", input_type=String(optional=True), prefix="--profile", doc=InputDocumentation(doc="Use specified stringprep profile instead\nValid stringprep profiles: `Nameprep',\n`iSCSI', `Nodeprep', `Resourceprep',\n`trace', `SASLprep'")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Print debugging information")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Silent operation"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Idn_V0_1_0().translate("wdl", allow_empty_container=True)

