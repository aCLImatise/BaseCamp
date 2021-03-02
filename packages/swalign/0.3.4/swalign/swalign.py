from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, String, Boolean

Swalign_V0_1_0 = CommandToolBuilder(tool="swalign", base_command=["swalign"], inputs=[ToolInput(tag="in_match_score_default", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Match score (default: 2)")), ToolInput(tag="in_mm", input_type=Int(optional=True), prefix="-mm", doc=InputDocumentation(doc="Mismatch penalty (default: 1)")), ToolInput(tag="in_gap", input_type=Int(optional=True), prefix="-gap", doc=InputDocumentation(doc="Gap penalty (default: 1)")), ToolInput(tag="in_gap_ext", input_type=Int(optional=True), prefix="-gapext", doc=InputDocumentation(doc="Gap extension penalty (default: 1)")), ToolInput(tag="in_gap_decay", input_type=Float(optional=True), prefix="-gapdecay", doc=InputDocumentation(doc="Decay the gap extension penalty (default: 0.0)")), ToolInput(tag="in_wrap", input_type=String(optional=True), prefix="-wrap", doc=InputDocumentation(doc="Wrap alignments when they are longer than N bases")), ToolInput(tag="in_global", input_type=Boolean(optional=True), prefix="-global", doc=InputDocumentation(doc="Perform a global alignment (experimental)")), ToolInput(tag="in_query", input_type=Boolean(optional=True), prefix="-query", doc=InputDocumentation(doc="Align the full query sequence (mix of local/global)")), ToolInput(tag="in_summary", input_type=String(optional=True), prefix="-summary", doc=InputDocumentation(doc="Write a summary files of match locations (tab-delimited)")), ToolInput(tag="in_use_region", input_type=Boolean(optional=True), prefix="-useregion", doc=InputDocumentation(doc="Use regions for coordinates if included in FASTA ref"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Swalign_V0_1_0().translate("wdl", allow_empty_container=True)

