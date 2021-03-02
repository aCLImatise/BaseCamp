from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, String

Pore_C_Alignments_Assign_Fragments_V0_1_0 = CommandToolBuilder(tool="pore_c_alignments_assign_fragments", base_command=["pore_c", "alignments", "assign-fragments"], inputs=[ToolInput(tag="in_mapping_quality_cut_off", input_type=Int(optional=True), prefix="--mapping_quality_cutoff", doc=InputDocumentation(doc="Minimum mapping quality for an alignment to\nbe considered  [default: 1]")), ToolInput(tag="in_min_overlap_length", input_type=Int(optional=True), prefix="--min_overlap_length", doc=InputDocumentation(doc="Minimum overlap in base pairs between an\nalignment and restriction fragment\n[default: 10]")), ToolInput(tag="in_containment_cut_off", input_type=Float(optional=True), prefix="--containment_cutoff", doc=InputDocumentation(doc="Minimum percentage of a fragment included in\nan overlap for that fragment to be\nconsidered 'contained' within an alignment\n[default: 99.0]")), ToolInput(tag="in_align_table", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pore-c:0.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pore_C_Alignments_Assign_Fragments_V0_1_0().translate("wdl")

