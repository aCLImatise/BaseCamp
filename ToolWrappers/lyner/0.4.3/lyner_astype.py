from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Lyner_Astype_V0_1_0 = CommandToolBuilder(tool="lyner_astype", base_command=["lyner", "astype"], inputs=[ToolInput(tag="in_type", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lyner_Astype_V0_1_0().translate("wdl", allow_empty_container=True)

