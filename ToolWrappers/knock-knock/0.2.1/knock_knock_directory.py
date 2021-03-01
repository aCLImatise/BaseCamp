from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Knock_Knock_Directory_V0_1_0 = CommandToolBuilder(tool="knock_knock_directory", base_command=["knock-knock", "directory"], inputs=[ToolInput(tag="in_knock_knock", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Knock_Knock_Directory_V0_1_0().translate("wdl", allow_empty_container=True)

