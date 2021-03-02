from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Trimfastqbyqvwindow_V0_1_0 = CommandToolBuilder(tool="trimFastqByQVWindow", base_command=["trimFastqByQVWindow"], inputs=[ToolInput(tag="in_fast_a_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_zero_six_zero_phred_qual_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_output", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_qual_output", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trimfastqbyqvwindow_V0_1_0().translate("wdl", allow_empty_container=True)

