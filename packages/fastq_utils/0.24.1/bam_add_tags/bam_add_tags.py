from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Bam_Add_Tags_V0_1_0 = CommandToolBuilder(tool="bam_add_tags", base_command=["bam_add_tags"], inputs=[ToolInput(tag="in_tx_two_gx", input_type=File(optional=True), prefix="--tx2gx", doc=InputDocumentation(doc="")), ToolInput(tag="in_tx", input_type=Boolean(optional=True), prefix="--tx", doc=InputDocumentation(doc="")), ToolInput(tag="in_out_bam", input_type=String(optional=True), prefix="--outbam", doc=InputDocumentation(doc="")), ToolInput(tag="in_in_bam", input_type=String(optional=True), prefix="--inbam", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/fastq_utils:0.24.1--hfb9b9cc_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Add_Tags_V0_1_0().translate("wdl")

