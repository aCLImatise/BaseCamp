from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Fastaptamer_Cluster_V0_1_0 = CommandToolBuilder(tool="fastaptamer_cluster", base_command=["fastaptamer_cluster"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence", input_type=String(), position=0, doc=InputDocumentation(doc="To prevent clustering of sequences not highly sampled (and improve execution ti-"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastaptamer_Cluster_V0_1_0().translate("wdl", allow_empty_container=True)

