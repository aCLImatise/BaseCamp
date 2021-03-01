from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Tn93_Fasta_V0_1_0 = CommandToolBuilder(tool="tn93_FASTA", base_command=["tn93", "FASTA"], inputs=[ToolInput(tag="in_q", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="")), ToolInput(tag="in_zero", input_type=Boolean(optional=True), prefix="-0", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_b", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tn93_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

