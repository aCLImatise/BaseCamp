from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Fastq_Anonymous_V0_1_0 = CommandToolBuilder(tool="fastq_anonymous", base_command=["fastq-anonymous"], inputs=[ToolInput(tag="in_mask", input_type=Boolean(optional=True), prefix="--mask", doc=InputDocumentation(doc="Mask all nucleotides using N")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Anonymous_V0_1_0().translate("wdl", allow_empty_container=True)

