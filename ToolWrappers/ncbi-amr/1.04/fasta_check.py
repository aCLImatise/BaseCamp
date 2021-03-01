from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Fasta_Check_V0_1_0 = CommandToolBuilder(tool="fasta_check", base_command=["fasta_check"], inputs=[ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="-threads", doc=InputDocumentation(doc="")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="-seed", doc=InputDocumentation(doc="")), ToolInput(tag="in_profile", input_type=Boolean(optional=True), prefix="-profile", doc=InputDocumentation(doc="")), ToolInput(tag="in_no_progress", input_type=Boolean(optional=True), prefix="-noprogress", doc=InputDocumentation(doc="")), ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="-verbose", doc=InputDocumentation(doc="")), ToolInput(tag="in_qc", input_type=Boolean(optional=True), prefix="-qc", doc=InputDocumentation(doc="")), ToolInput(tag="in_in", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Check_V0_1_0().translate("wdl", allow_empty_container=True)

