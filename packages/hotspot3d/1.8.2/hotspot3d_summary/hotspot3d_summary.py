from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Hotspot3D_Summary_V0_1_0 = CommandToolBuilder(tool="hotspot3d_summary", base_command=["hotspot3d", "summary"], inputs=[ToolInput(tag="in_clusters_file", input_type=Boolean(optional=True), prefix="--clusters-file", doc=InputDocumentation(doc="Clusters file\nOPTIONAL")), ToolInput(tag="in_output_prefix", input_type=Boolean(optional=True), prefix="--output-prefix", doc=InputDocumentation(doc="Output prefix"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hotspot3D_Summary_V0_1_0().translate("wdl", allow_empty_container=True)

