from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Refgenie_Add_Asset_Registry_Paths_V0_1_0 = CommandToolBuilder(tool="refgenie_add_asset_registry_paths", base_command=["refgenie", "add", "asset-registry-paths"], inputs=[ToolInput(tag="in_p", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_genie", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_add", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refgenie_Add_Asset_Registry_Paths_V0_1_0().translate("wdl", allow_empty_container=True)

