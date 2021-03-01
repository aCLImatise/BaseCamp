from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Metilene_Input_Pl_V0_1_0 = CommandToolBuilder(tool="metilene_input.pl", base_command=["metilene_input.pl"], inputs=[ToolInput(tag="in_in_two", input_type=Boolean(optional=True), prefix="--in2", doc=InputDocumentation(doc="comma-seperated list of sorted (!) bedgraph input files of group 2")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="--out", doc=InputDocumentation(doc="path/file of out file (metilene input) (default: metilene_g1_g2.input, g1 set by -h1 option, g2 set by -h2 option)")), ToolInput(tag="in_hone", input_type=Boolean(optional=True), prefix="--h1", doc=InputDocumentation(doc="identifier of group 1 (default: g1)")), ToolInput(tag="in_h_two", input_type=Boolean(optional=True), prefix="--h2", doc=InputDocumentation(doc="identifier of group 2 (default: g2)")), ToolInput(tag="in_pathexecutable_bedtools_executable", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="path/executable of bedtools executable (default: in PATH)")), ToolInput(tag="in_in_one", input_type=Int(optional=True), prefix="--in1", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metilene_Input_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

