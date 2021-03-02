from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Treebest_Filter_V0_1_0 = CommandToolBuilder(tool="treebest_filter", base_command=["treebest", "filter"], inputs=[ToolInput(tag="in_nucleotide_alignment", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="nucleotide alignment")), ToolInput(tag="in_collapse_alternative_splicing", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="collapse alternative splicing")), ToolInput(tag="in_apply_alignment_mask", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="do not apply alignment mask")), ToolInput(tag="in_mask_lowscoring_segments", input_type=Boolean(optional=True), prefix="-N", doc=InputDocumentation(doc="do not mask low-scoring segments")), ToolInput(tag="in_quality_cutoff", input_type=Int(optional=True), prefix="-F", doc=InputDocumentation(doc="quality cut-off [15]")), ToolInput(tag="in_alignment", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Treebest_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

