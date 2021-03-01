from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Nw_Trim_Depth_V0_1_0 = CommandToolBuilder(tool="nw_trim_depth", base_command=["nw_trim", "depth"], inputs=[ToolInput(tag="in_maximum_depth_expressed", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc=": the maximum depth is expressed in number of ancestors, not distance.\nNodes are not shortened, but no node is retained that has more\nancestors than the maximum."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nw_Trim_Depth_V0_1_0().translate("wdl", allow_empty_container=True)

