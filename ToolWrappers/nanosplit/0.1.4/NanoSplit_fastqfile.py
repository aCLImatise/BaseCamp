from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nanosplit_Fastqfile_V0_1_0 = CommandToolBuilder(tool="NanoSplit_fastqfile", base_command=["NanoSplit", "fastqfile"], inputs=[ToolInput(tag="in_outdir", input_type=String(optional=True), prefix="--outdir", doc=InputDocumentation(doc="")), ToolInput(tag="in_q", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nanosplit_Fastqfile_V0_1_0().translate("wdl", allow_empty_container=True)

