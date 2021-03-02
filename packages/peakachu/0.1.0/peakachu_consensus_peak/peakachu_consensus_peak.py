from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Peakachu_Consensus_Peak_V0_1_0 = CommandToolBuilder(tool="peakachu_consensus_peak", base_command=["peakachu", "consensus_peak"], inputs=[ToolInput(tag="in_consensus_length", input_type=Int(optional=True), prefix="--consensus_length", doc=InputDocumentation(doc="Length of the region around peak centers for plotting\nconsensus peaks\n")), ToolInput(tag="in_project_folder", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Peakachu_Consensus_Peak_V0_1_0().translate("wdl", allow_empty_container=True)

