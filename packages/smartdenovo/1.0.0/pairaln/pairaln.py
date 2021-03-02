from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Pairaln_V0_1_0 = CommandToolBuilder(tool="pairaln", base_command=["pairaln"], inputs=[ToolInput(tag="in_try_both_strands", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="Try both strands")), ToolInput(tag="in_alignment_penalty_match", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc="Alignment penalty: match, [2]")), ToolInput(tag="in_alignment_penalty_mismatch", input_type=Int(optional=True), prefix="-X", doc=InputDocumentation(doc="Alignment penalty: mismatch, [-5]")), ToolInput(tag="in_alignment_penalty_insertion", input_type=Int(optional=True), prefix="-O", doc=InputDocumentation(doc="Alignment penalty: insertion or deletion, [-3]")), ToolInput(tag="in_alignment_penalty_gap", input_type=Int(optional=True), prefix="-E", doc=InputDocumentation(doc="Alignment penalty: gap extension, [-1]")), ToolInput(tag="in_alignment_penalty_read", input_type=Int(optional=True), prefix="-T", doc=InputDocumentation(doc="Alignment penalty: read end clipping, 0: distable HSP extension, otherwise set to -100 or other [-100]")), ToolInput(tag="in_output_alignment", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Output alignment")), ToolInput(tag="in_a_aggcc_tt", input_type=String(), position=0, doc=InputDocumentation(doc=">read2")), ToolInput(tag="in_aag_cctt", input_type=String(), position=1, doc=InputDocumentation(doc="and so on, read3, read4, ..."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pairaln_V0_1_0().translate("wdl", allow_empty_container=True)

