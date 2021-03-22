from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Tobias_Createnetwork_V0_1_0 = CommandToolBuilder(tool="TOBIAS_CreateNetwork", base_command=["TOBIAS", "CreateNetwork"], inputs=[ToolInput(tag="in_tfbs", input_type=Boolean(optional=True), prefix="--TFBS", doc=InputDocumentation(doc="[ [ ...]]   File(s) containing TFBS (with annotation) to create network from")), ToolInput(tag="in_origin", input_type=Boolean(optional=True), prefix="--origin", doc=InputDocumentation(doc="File containing mapping of TF <-> origin gene")), ToolInput(tag="in_start", input_type=Boolean(optional=True), prefix="--start", doc=InputDocumentation(doc="Name of node to start in (default: all nodes)")), ToolInput(tag="in_max_len", input_type=Boolean(optional=True), prefix="--max-len", doc=InputDocumentation(doc="Maximum number of nodes in paths through graph (default: 4)")), ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Path to output directory (default: createnetwork_output)")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Level of output logging (0: silent, 1: errors/warnings, 2: info, 3:\nstats, 4: debug, 5: spam) (default: 3)\n"))], outputs=[ToolOutput(tag="out_outdir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Path to output directory (default: createnetwork_output)"))], container="quay.io/biocontainers/tobias:0.12.10--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tobias_Createnetwork_V0_1_0().translate("wdl")

