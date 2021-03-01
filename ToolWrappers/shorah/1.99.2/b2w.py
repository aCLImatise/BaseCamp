from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

B2W_V0_1_0 = CommandToolBuilder(tool="b2w", base_command=["b2w"], inputs=[ToolInput(tag="in_window_length_int", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc=": window length (INT)")), ToolInput(tag="in__increment_int", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc=": increment (INT)")), ToolInput(tag="in_minimum_overlap_int", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": minimum overlap (INT)")), ToolInput(tag="in_max_reads_starting", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc=": max reads starting at a position (INT)")), ToolInput(tag="in_coverage_threshold_windows", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc=": coverage threshold. Omit windows with low coverage (INT)")), ToolInput(tag="in_drop_snvs_are", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=": drop SNVs that are adjacent to insertions/deletions (alternate behaviour)")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_region", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/shorah:1.99.2--py38h032b7f5_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    B2W_V0_1_0().translate("wdl")

