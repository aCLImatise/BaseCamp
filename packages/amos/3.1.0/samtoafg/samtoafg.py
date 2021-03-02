from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Samtoafg_V0_1_0 = CommandToolBuilder(tool="samtoafg", base_command=["samtoafg"], inputs=[ToolInput(tag="in_eid", input_type=Boolean(optional=True), prefix="--eid", doc=InputDocumentation(doc="the EID of the library")), ToolInput(tag="in_iid", input_type=Boolean(optional=True), prefix="--iid", doc=InputDocumentation(doc="the IID of the library")), ToolInput(tag="in_mean", input_type=Boolean(optional=True), prefix="--mean", doc=InputDocumentation(doc="the mean of the fragment-size")), ToolInput(tag="in_sd", input_type=Boolean(optional=True), prefix="--sd", doc=InputDocumentation(doc="the standard deviation of the fragment-size\n")), ToolInput(tag="in_cb", input_type=String(optional=True), prefix="-cb", doc=InputDocumentation(doc="")), ToolInput(tag="in_abyss_sam_to_afg", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bank_transact", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_hawkeye", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_contigs_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_alignments_dots_am", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtoafg_V0_1_0().translate("wdl", allow_empty_container=True)

