from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Ace2Sam_V0_1_0 = CommandToolBuilder(tool="ace2sam", base_command=["ace2sam"], inputs=[ToolInput(tag="in_output_padded_sam", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="output padded SAM")), ToolInput(tag="in_write_contig_sequence", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="write the contig sequence in SAM")), ToolInput(tag="in_pc", input_type=Boolean(optional=True), prefix="-pc", doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_ace", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/samtools:1.12--hd5e65b6_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ace2Sam_V0_1_0().translate("wdl")

