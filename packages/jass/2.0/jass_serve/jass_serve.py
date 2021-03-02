from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Jass_Serve_V0_1_0 = CommandToolBuilder(tool="jass_serve", base_command=["jass", "serve"], inputs=[ToolInput(tag="in_jass", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jass_Serve_V0_1_0().translate("wdl", allow_empty_container=True)

