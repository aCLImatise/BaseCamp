from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Seqcoverage_Fasta_V0_1_0 = CommandToolBuilder(tool="seqcoverage_FASTA", base_command=["seqcoverage", "FASTA"], inputs=[ToolInput(tag="in_q", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqcoverage_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

