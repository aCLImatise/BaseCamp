from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Chopupbackground_Pl_V0_1_0 = CommandToolBuilder(tool="chopUpBackground.pl", base_command=["chopUpBackground.pl"], inputs=[ToolInput(tag="in_target_seq_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_background_seq_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chopupbackground_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

