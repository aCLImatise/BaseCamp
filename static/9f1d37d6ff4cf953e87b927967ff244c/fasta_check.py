from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Fasta_Check_V0_1_0 = CommandToolBuilder(tool="fasta_check", base_command=["fasta_check"], inputs=[ToolInput(tag="in_hyphen", input_type=Boolean(optional=True), prefix="-hyphen", doc=InputDocumentation(doc="")), ToolInput(tag="in_aa", input_type=Boolean(optional=True), prefix="-aa", doc=InputDocumentation(doc="")), ToolInput(tag="in_in", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Check_V0_1_0().translate("wdl", allow_empty_container=True)

