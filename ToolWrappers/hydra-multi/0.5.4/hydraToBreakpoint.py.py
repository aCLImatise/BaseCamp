from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Hydratobreakpoint_Py_V0_1_0 = CommandToolBuilder(tool="hydraToBreakpoint.py", base_command=["hydraToBreakpoint.py"], inputs=[ToolInput(tag="in_bedpe_file_entry", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="bedpe file in which entry 1 < entry 2; for stdin type 'stdin'")), ToolInput(tag="in_slop_hydra_footprint", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="slop out from the HYDRA footprint towards the breakpoint (half\nof average library size seems like a good number for predicting\nbreakpoints) [default = 200]")), ToolInput(tag="in_slop_hydra_away", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="slop in towards the HYDRA footprint, away from the breakpoint\n[default = 10]")), ToolInput(tag="in_range_bedpe_coordinates", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="the range of bedpe coordinates considered local [default =\n1000000] Calculated by subtracting field 6 from field 2.\n")), ToolInput(tag="in_c", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_b", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hydratobreakpoint_Py_V0_1_0().translate("wdl")

