from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Tomultifasta_V0_1_0 = CommandToolBuilder(tool="toMultiFastA", base_command=["toMultiFastA"], inputs=[ToolInput(tag="in_input_interval_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_base_name", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tomultifasta_V0_1_0().translate("wdl", allow_empty_container=True)

