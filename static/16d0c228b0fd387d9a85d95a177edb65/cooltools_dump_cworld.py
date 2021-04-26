from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Cooltools_Dump_Cworld_V0_1_0 = CommandToolBuilder(tool="cooltools_dump_cworld", base_command=["cooltools", "dump-cworld"], inputs=[ToolInput(tag="in_c_world_type", input_type=File(optional=True), prefix="--cworld-type", doc=InputDocumentation(doc="[matrix|tar]      The format of the CWorld output. 'matrix'\nconverts a single .cool file into the\n.matrix.txt.gz tab-separated format. 'tar'\ndumps all specified cooler files into a\nsingle .tar archive containing multiple\n.matrix.txt.gz files (use to make multi-\nresolution archives).  [default: matrix]")), ToolInput(tag="in_region", input_type=File(optional=True), prefix="--region", doc=InputDocumentation(doc="The coordinates of a genomic region to dump,\nin the UCSC format. If empty (by default),\ndump a genome-wide matrix. This option can\nbe used only when dumping a single cooler\nfile.  [default: ]")), ToolInput(tag="in_balancing_type", input_type=Boolean(optional=True), prefix="--balancing-type", doc=InputDocumentation(doc="[IC_unity|IC|raw]\nThe type of the matrix balancing. 'IC_unity'\n- iteratively corrected for the total number\nof contacts per locus=1.0; 'IC' - same, but\npreserving the average total number of\ncontacts; 'raw' - no balancing  [default:\nIC_unity]")), ToolInput(tag="in_format_dot", input_type=String(), position=0, doc=InputDocumentation(doc="COOL_PATHS : Paths to one or multiple .cool files OUT_PATH : Output CWorld"))], outputs=[ToolOutput(tag="out_c_world_type", output_type=File(optional=True), selector=InputSelector(input_to_select="in_c_world_type", type_hint=File()), doc=OutputDocumentation(doc="[matrix|tar]      The format of the CWorld output. 'matrix'\nconverts a single .cool file into the\n.matrix.txt.gz tab-separated format. 'tar'\ndumps all specified cooler files into a\nsingle .tar archive containing multiple\n.matrix.txt.gz files (use to make multi-\nresolution archives).  [default: matrix]"))], container="quay.io/biocontainers/cooltools:0.4.0--py39hcbe4a3b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cooltools_Dump_Cworld_V0_1_0().translate("wdl")

