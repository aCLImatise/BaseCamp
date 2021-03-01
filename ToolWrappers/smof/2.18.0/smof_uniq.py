from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Smof_Uniq_V0_1_0 = CommandToolBuilder(tool="smof_uniq", base_command=["smof", "uniq"], inputs=[ToolInput(tag="in_count", input_type=Boolean(optional=True), prefix="--count", doc=InputDocumentation(doc="writes (count|header) in tab-delimited format")), ToolInput(tag="in_repeated", input_type=Boolean(optional=True), prefix="--repeated", doc=InputDocumentation(doc="print only repeated entries")), ToolInput(tag="in_uniq", input_type=Boolean(optional=True), prefix="--uniq", doc=InputDocumentation(doc="print only unique entries")), ToolInput(tag="in_pack", input_type=Boolean(optional=True), prefix="--pack", doc=InputDocumentation(doc="combine redundant sequences by concatenating the")), ToolInput(tag="in_pack_sep", input_type=String(optional=True), prefix="--pack-sep", doc=InputDocumentation(doc="set delimiting string for pack/unpack operations (SOH,\n0x01, by default)")), ToolInput(tag="in_final_header", input_type=Boolean(optional=True), prefix="--final-header", doc=InputDocumentation(doc="make headers unique by deleting all but the final\nentry with a given header (the sequence is ignored, so\norder matters, you may want to sort by sequence first\nfor reproducibility)\n")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="input fasta sequence (default = stdin)")), ToolInput(tag="in_headers", input_type=String(), position=0, doc=InputDocumentation(doc="-P, --unpack          reverse the pack operation"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smof_Uniq_V0_1_0().translate("wdl", allow_empty_container=True)

