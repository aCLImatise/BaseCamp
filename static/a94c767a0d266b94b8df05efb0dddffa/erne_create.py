from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int

Erne_Create_V0_1_0 = CommandToolBuilder(tool="erne_create", base_command=["erne-create"], inputs=[ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="input file (can be repeated several time) [REQUIRED]")), ToolInput(tag="in_output_prefix", input_type=File(optional=True), prefix="--output-prefix", doc=InputDocumentation(doc="output reference file name in ERNE format. Suffix added\nautomatically: .ebh for dB-Hash reference, .ebm for\ndB-Hash methylated reference. [REQUIRED]")), ToolInput(tag="in_methyl_hash", input_type=Boolean(optional=True), prefix="--methyl-hash", doc=InputDocumentation(doc="create reference for methylation search")), ToolInput(tag="in_fingerprint_length_default", input_type=Int(optional=True), prefix="--k", doc=InputDocumentation(doc="[DEPRECATED] fingerprint length (default is\nautodetected: log4(bl*n/2), where n=text length);  the\nrange of admissible values is 5-32. With --methyl-hash\nthe range of admissible values is 10-64")), ToolInput(tag="in_bl", input_type=Int(optional=True), prefix="--bl", doc=InputDocumentation(doc="seed length (default: 20 for DNA search, 30 for\nBS-search)")), ToolInput(tag="in_offrate_sa_pointers", input_type=Int(optional=True), prefix="--o", doc=InputDocumentation(doc="offrate for SA pointers (default: 16)."))], outputs=[ToolOutput(tag="out_output_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_prefix", type_hint=File()), doc=OutputDocumentation(doc="output reference file name in ERNE format. Suffix added\nautomatically: .ebh for dB-Hash reference, .ebm for\ndB-Hash methylated reference. [REQUIRED]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Erne_Create_V0_1_0().translate("wdl", allow_empty_container=True)

