from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Cram_Filter_V0_1_0 = CommandToolBuilder(tool="cram_filter", base_command=["cram_filter"], inputs=[ToolInput(tag="in_only_emit_containers", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="[-end]    Only emit containers 'start' to 'end' inclusive.\n'-n 100' is equivalent to '-n 100-100'.")), ToolInput(tag="in_limit_output_containers", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="Limit output to containers overlapping 'range'.\n'-r chr1' matches all of chr1.\n'-r chr1:1000' is equivalent to '-r chr1:1000-1000'.")), ToolInput(tag="in_drop_quality_strings", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="Drop quality strings (CRAM QS).")), ToolInput(tag="in_discard_comma_list", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Discard comma separated list of tag types.")), ToolInput(tag="in_keep_only_types", input_type=String(optional=True), prefix="-T", doc=InputDocumentation(doc="Keep only aux. tag types in the specified list.")), ToolInput(tag="in_in_dot_cram", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_cram", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cram_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

