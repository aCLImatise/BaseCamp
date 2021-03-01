from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Dr_Disco_Unfix_V0_1_0 = CommandToolBuilder(tool="dr_disco_unfix", base_command=["dr-disco", "unfix"], inputs=[ToolInput(tag="in_temp_dir", input_type=File(optional=True), prefix="--temp-dir", doc=InputDocumentation(doc="Path in which temp files are stored (default: /tmp)")), ToolInput(tag="in_input_alignment_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_alignment_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dr_Disco_Unfix_V0_1_0().translate("wdl", allow_empty_container=True)

