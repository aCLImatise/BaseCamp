from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Graphicsmagick___Config_V0_1_0 = CommandToolBuilder(tool="GraphicsMagick++_config", base_command=["GraphicsMagick++-config"], inputs=[ToolInput(tag="in_graphicsmagick", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Graphicsmagick___Config_V0_1_0().translate("wdl", allow_empty_container=True)

