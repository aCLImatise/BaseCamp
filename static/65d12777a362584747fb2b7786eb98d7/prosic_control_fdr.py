from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, String, Int

Prosic_Control_Fdr_V0_1_0 = CommandToolBuilder(tool="prosic_control_fdr", base_command=["prosic", "control-fdr"], inputs=[ToolInput(tag="in_fdr", input_type=Float(optional=True), prefix="--fdr", doc=InputDocumentation(doc="FDR to control for. [default: 0.05]")), ToolInput(tag="in_event", input_type=String(optional=True), prefix="--event", doc=InputDocumentation(doc="Event to consider.")), ToolInput(tag="in_max_len", input_type=Int(optional=True), prefix="--max-len", doc=InputDocumentation(doc="Maximum indel length to consider (exclusive).")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min-len", doc=InputDocumentation(doc="Minimum indel length to consider.")), ToolInput(tag="in_var", input_type=String(optional=True), prefix="--var", doc=InputDocumentation(doc="Variant type to consider (SNV, INS, DEL)."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prosic_Control_Fdr_V0_1_0().translate("wdl", allow_empty_container=True)

