from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Biscuit_Bsstrand_V0_1_0 = CommandToolBuilder(tool="biscuit_bsstrand", base_command=["biscuit", "bsstrand"], inputs=[ToolInput(tag="in_region_optional_chrx", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="region (optional, chrX:123-456 if missing, process the whole bam).")), ToolInput(tag="in_append_count_tag", input_type=Boolean(optional=True), prefix="-y", doc=InputDocumentation(doc="append count of C>T (YC tag) and G>A (YG tag) in output bam.")), ToolInput(tag="in_correct_bsstrand_output", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="correct bsstrand in the output bam, YD tag will be replaced if existent and created if not.")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc="optional output bam, work with -y or -c"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biscuit_Bsstrand_V0_1_0().translate("wdl", allow_empty_container=True)

