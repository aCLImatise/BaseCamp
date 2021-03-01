from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Hivtrace_Strip_Drams_V0_1_0 = CommandToolBuilder(tool="hivtrace_strip_drams", base_command=["hivtrace_strip_drams"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="The input FASTA file")), ToolInput(tag="in_d", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc="-d {lewis,wheeler}, --dram {lewis,wheeler}"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hivtrace_Strip_Drams_V0_1_0().translate("wdl", allow_empty_container=True)

