from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Dfq2Fq_V2_Pl_V0_1_0 = CommandToolBuilder(tool="dfq2fq_v2.pl", base_command=["dfq2fq_v2.pl"], inputs=[ToolInput(tag="in_valid_read_length", input_type=Int(optional=True), prefix="--valid_read_length", doc=InputDocumentation(doc="(chops low depth (<valid_depth) regions)")), ToolInput(tag="in_check", input_type=Boolean(optional=True), prefix="--check", doc=InputDocumentation(doc="(outputs not broken dfq records and discard the rest ('broken' was defined in this code))")), ToolInput(tag="in_pnp", input_type=Boolean(optional=True), prefix="--pnp", doc=InputDocumentation(doc="(outputs confidently corrected reads only ('confident' was defined in this code))")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="(outputs confidently corrected read names)")), ToolInput(tag="in_n_list", input_type=Boolean(optional=True), prefix="--nlist", doc=InputDocumentation(doc="(outputs NOT confidently corrected read names)]")), ToolInput(tag="in_this", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_dfq", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dfq2Fq_V2_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

