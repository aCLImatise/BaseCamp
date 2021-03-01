from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, Boolean, String

Sim_Reads_Tran_V0_1_0 = CommandToolBuilder(tool="sim_reads_tran", base_command=["sim_reads_tran"], inputs=[ToolInput(tag="in_error_rate", input_type=Float(optional=True), prefix="--error_rate", doc=InputDocumentation(doc="(=0.01)           error rate")), ToolInput(tag="in_read_length", input_type=Int(optional=True), prefix="--read_length", doc=InputDocumentation(doc="(=100)           read length")), ToolInput(tag="in_paired", input_type=Boolean(optional=True), prefix="--paired", doc=InputDocumentation(doc="if paired-end")), ToolInput(tag="in_sd", input_type=Int(optional=True), prefix="--sd", doc=InputDocumentation(doc="(=-1)                     sd")), ToolInput(tag="in_insert_distance", input_type=Int(optional=True), prefix="--insert_distance", doc=InputDocumentation(doc="(=500)       insert distance")), ToolInput(tag="in_ref_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sim_Reads_Tran_V0_1_0().translate("wdl", allow_empty_container=True)

