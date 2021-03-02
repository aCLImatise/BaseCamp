from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Samtools_Reheader_V0_1_0 = CommandToolBuilder(tool="samtools_reheader", base_command=["samtools", "reheader"], inputs=[ToolInput(tag="in_no_pg", input_type=Boolean(optional=True), prefix="--no-PG", doc=InputDocumentation(doc="Do not generate a @PG header line.")), ToolInput(tag="in_in_place", input_type=Boolean(optional=True), prefix="--in-place", doc=InputDocumentation(doc="Modify the CRAM file directly, if possible.\n(Defaults to outputting to stdout.)")), ToolInput(tag="in_command", input_type=String(optional=True), prefix="--command", doc=InputDocumentation(doc="Pass the header in SAM format to external program CMD.")), ToolInput(tag="in_in_dot_header_dots_am", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/samtools:1.11--h6270b1f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Reheader_V0_1_0().translate("wdl")

