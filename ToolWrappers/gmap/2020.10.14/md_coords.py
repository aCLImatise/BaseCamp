from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Md_Coords_V0_1_0 = CommandToolBuilder(tool="md_coords", base_command=["md_coords"], inputs=[ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gmap:2020.10.14--pl526h2f06484_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Md_Coords_V0_1_0().translate("wdl")

