from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bam2Sam_V0_1_0 = CommandToolBuilder(tool="bam2sam", base_command=["bam2sam"], inputs=[ToolInput(tag="in_no_header", input_type=Boolean(optional=True), prefix="--no-header", doc=InputDocumentation(doc="Omit header from output.")), ToolInput(tag="in_header_only", input_type=Boolean(optional=True), prefix="--header-only", doc=InputDocumentation(doc="Print only the header (no records).")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc="FILE  Input BAM file. If not provided, stdin will be used as input."))], outputs=[], container="quay.io/biocontainers/pbbam:1.6.0--h5b7e6e0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam2Sam_V0_1_0().translate("wdl")

