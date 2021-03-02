from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Boolean, String

Chromosomer_Fragmentmap_V0_1_0 = CommandToolBuilder(tool="chromosomer_fragmentmap", base_command=["chromosomer", "fragmentmap"], inputs=[ToolInput(tag="in_ratio_threshold", input_type=Float(optional=True), prefix="--ratio_threshold", doc=InputDocumentation(doc="the least ratio of two greatest fragment alignment\nscores to determine the fragment placed to a reference\ngenome (default: 1.2)")), ToolInput(tag="in_shrink_gaps", input_type=Boolean(optional=True), prefix="--shrink_gaps", doc=InputDocumentation(doc="shrink large interfragment gaps to the specified size\n(default: False)\n")), ToolInput(tag="in_construct_fragment_map", input_type=String(), position=0, doc=InputDocumentation(doc="Construct a fragment map from fragment alignments to reference chromosomes.")), ToolInput(tag="in_alignment_file", input_type=String(), position=0, doc=InputDocumentation(doc="a BLAST tabular file of fragment alignments to\nreference chromosomes")), ToolInput(tag="in_gap_size", input_type=String(), position=1, doc=InputDocumentation(doc="a size of a gap inserted between mapped fragments")), ToolInput(tag="in_fragment_lengths", input_type=String(), position=2, doc=InputDocumentation(doc="a file containing lengths of fragment sequences; it\ncan be obtained using the 'chromosomer fastalength'\ntool")), ToolInput(tag="in_output_fragment_map", input_type=String(), position=3, doc=InputDocumentation(doc="an output fragment map file name"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chromosomer_Fragmentmap_V0_1_0().translate("wdl", allow_empty_container=True)

