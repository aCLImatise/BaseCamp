from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Micall_Fastq2_V0_1_0 = CommandToolBuilder(tool="micall_fastq2", base_command=["micall", "fastq2"], inputs=[ToolInput(tag="in_keep", input_type=Boolean(optional=True), prefix="--keep", doc=InputDocumentation(doc="")), ToolInput(tag="in_unzipped", input_type=Boolean(optional=True), prefix="--unzipped", doc=InputDocumentation(doc="")), ToolInput(tag="in_outdir", input_type=String(optional=True), prefix="--outdir", doc=InputDocumentation(doc="")), ToolInput(tag="in_batch", input_type=String(optional=True), prefix="--batch", doc=InputDocumentation(doc="")), ToolInput(tag="in_mic_all", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Micall_Fastq2_V0_1_0().translate("wdl", allow_empty_container=True)

