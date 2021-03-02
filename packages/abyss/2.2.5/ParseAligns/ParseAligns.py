from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Parsealigns_V0_1_0 = CommandToolBuilder(tool="ParseAligns", base_command=["ParseAligns"], inputs=[ToolInput(tag="in_min_align", input_type=Int(optional=True), prefix="--min-align", doc=InputDocumentation(doc="minimum alignment length")), ToolInput(tag="in_dist", input_type=File(optional=True), prefix="--dist", doc=InputDocumentation(doc="write distance estimates to this file")), ToolInput(tag="in_frag", input_type=File(optional=True), prefix="--frag", doc=InputDocumentation(doc="write fragment sizes to this file")), ToolInput(tag="in_hist", input_type=File(optional=True), prefix="--hist", doc=InputDocumentation(doc="write the fragment size histogram to FILE")), ToolInput(tag="in_sam", input_type=Boolean(optional=True), prefix="--sam", doc=InputDocumentation(doc="alignments are in SAM format")), ToolInput(tag="in_k_aligner", input_type=Boolean(optional=True), prefix="--kaligner", doc=InputDocumentation(doc="alignments are in KAligner format")), ToolInput(tag="in_cover", input_type=String(optional=True), prefix="--cover", doc=InputDocumentation(doc="coverage cut-off for distance estimates")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output")), ToolInput(tag="in_k", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="")), ToolInput(tag="in_km_er", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsealigns_V0_1_0().translate("wdl")

