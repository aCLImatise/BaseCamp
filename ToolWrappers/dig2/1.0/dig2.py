from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dig2_V0_1_0 = CommandToolBuilder(tool="dig2", base_command=["dig2"], inputs=[ToolInput(tag="in_dig", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_sequence_database", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_settings", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dig2_V0_1_0().translate("wdl", allow_empty_container=True)

