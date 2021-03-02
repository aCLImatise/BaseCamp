from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Filter_Gff_Overlap_V0_1_0 = CommandToolBuilder(tool="filter_gff_overlap", base_command=["filter-gff", "overlap"], inputs=[ToolInput(tag="in_verbose", input_type=Int(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Size of the overlap that triggers the filter\n[default: 100]")), ToolInput(tag="in_sorted", input_type=Boolean(optional=True), prefix="--sorted", doc=InputDocumentation(doc="If the GFF file is sorted (all of a sequence\nannotations are contiguos and sorted by\nstrand) can use less memory, `sort -s -k 1,1\n-k 7,7` can be used")), ToolInput(tag="in_choose_func", input_type=String(optional=True), prefix="--choose-func", doc=InputDocumentation(doc="Function to choose between two overlapping")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="Shows Progress Bar")), ToolInput(tag="in_annotations", input_type=String(), position=0, doc=InputDocumentation(doc="-a, --sort-attr [bitscore|identity|length]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Gff_Overlap_V0_1_0().translate("wdl", allow_empty_container=True)

