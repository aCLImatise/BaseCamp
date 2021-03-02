from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Hotspot3D_Sigclus_V0_1_0 = CommandToolBuilder(tool="hotspot3d_sigclus", base_command=["hotspot3d", "sigclus"], inputs=[ToolInput(tag="in_prep_dir", input_type=Boolean(optional=True), prefix="--prep-dir", doc=InputDocumentation(doc="Preprocessing directory")), ToolInput(tag="in_pairwise", input_type=Boolean(optional=True), prefix="--pairwise", doc=InputDocumentation(doc="Pairwise file (pancan19.pairwise)")), ToolInput(tag="in_clusters", input_type=Boolean(optional=True), prefix="--clusters", doc=InputDocumentation(doc="Cluster file (pancan19.intra.20..05.10.clusters)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file prefix (pancan19.intra.20..05.10)")), ToolInput(tag="in_simulations", input_type=Boolean(optional=True), prefix="--simulations", doc=InputDocumentation(doc="Number of simulations, default = 1000000")), ToolInput(tag="in_usage", input_type=String(), position=0, doc=InputDocumentation(doc="Usage: hotspot3d sigclus [options]"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file prefix (pancan19.intra.20..05.10)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hotspot3D_Sigclus_V0_1_0().translate("wdl", allow_empty_container=True)

