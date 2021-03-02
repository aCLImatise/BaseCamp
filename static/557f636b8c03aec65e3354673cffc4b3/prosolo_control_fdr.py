from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Boolean, Int, File, String

Prosolo_Control_Fdr_V0_1_0 = CommandToolBuilder(tool="prosolo_control_fdr", base_command=["prosolo", "control-fdr"], inputs=[ToolInput(tag="in_fdr", input_type=Float(optional=True), prefix="--fdr", doc=InputDocumentation(doc="FDR to control for. [default: 0.05]")), ToolInput(tag="in_events", input_type=Boolean(optional=True), prefix="--events", doc=InputDocumentation(doc="<STRING(,STRING)*>    Comma-separated list of Events to consider jointly (e.g. `--events\nEvent1,Event2`).")), ToolInput(tag="in_max_len", input_type=Int(optional=True), prefix="--max-len", doc=InputDocumentation(doc="Maximum indel length to consider (exclusive).")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min-len", doc=InputDocumentation(doc="Minimum indel length to consider.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="BCF file that contains the filtered results (if omitted, write to STDOUT).")), ToolInput(tag="in_var", input_type=String(optional=True), prefix="--var", doc=InputDocumentation(doc="Variant type to consider (SNV, INS, DEL).")), ToolInput(tag="in_bcf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prosolo_Control_Fdr_V0_1_0().translate("wdl", allow_empty_container=True)

