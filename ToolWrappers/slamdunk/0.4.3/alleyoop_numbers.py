from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Alleyoop_Numbers_V0_1_0 = CommandToolBuilder(tool="alleyoop_numbers", base_command=["alleyoop", "numbers"], inputs=[ToolInput(tag="in_alley_oop", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alleyoop_Numbers_V0_1_0().translate("wdl", allow_empty_container=True)

