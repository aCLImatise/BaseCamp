from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, Float, File

Contig_Overlap_Trimmer_V0_1_0 = CommandToolBuilder(tool="contig_overlap_trimmer", base_command=["contig_overlap_trimmer"], inputs=[ToolInput(tag="in_no_trim", input_type=Boolean(optional=True), prefix="--no_trim", doc=InputDocumentation(doc="Do not trim overlaps")), ToolInput(tag="in_trim_rev_overlaps", input_type=Boolean(optional=True), prefix="--trim_rev_overlaps", doc=InputDocumentation(doc="Trim reversed overlaps")), ToolInput(tag="in_overlap_offset", input_type=Int(optional=True), prefix="--overlap_offset", doc=InputDocumentation(doc="Minimum offset from ends to look for overlaps [1000]")), ToolInput(tag="in_overlap_boundary_max", input_type=Int(optional=True), prefix="--overlap_boundary_max", doc=InputDocumentation(doc="Maximum boundary of overlap expressed as percentage of\ncontig length [50]")), ToolInput(tag="in_overlap_min_length", input_type=Int(optional=True), prefix="--overlap_min_length", doc=InputDocumentation(doc="Minimum length of a overlap [1000]")), ToolInput(tag="in_overlap_max_length", input_type=Int(optional=True), prefix="--overlap_max_length", doc=InputDocumentation(doc="Maximum length of a overlap [3000]")), ToolInput(tag="in_overlap_percent_id", input_type=Int(optional=True), prefix="--overlap_percent_id", doc=InputDocumentation(doc="Minimum acceptable hit percent id for overlaps [85]")), ToolInput(tag="in_min_trim_length", input_type=Float(optional=True), prefix="--min_trim_length", doc=InputDocumentation(doc="Minimum acceptable trimmed length expressed as\npercentage of total contig length [0.89]")), ToolInput(tag="in_skip", input_type=File(optional=True), prefix="--skip", doc=InputDocumentation(doc="File of contig ids to skip")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep all temp files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Contig_Overlap_Trimmer_V0_1_0().translate("wdl", allow_empty_container=True)

