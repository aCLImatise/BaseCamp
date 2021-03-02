from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nebulizer_Config_V0_1_0 = CommandToolBuilder(tool="nebulizer_config", base_command=["nebulizer", "config"], inputs=[ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="only show configuration items that match NAME. Can include\nglob-style wild-cards.")), ToolInput(tag="in_galaxy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_Config_V0_1_0().translate("wdl", allow_empty_container=True)

