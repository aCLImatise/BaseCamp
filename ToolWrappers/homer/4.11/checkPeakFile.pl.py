from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Checkpeakfile_Pl_V0_1_0 = CommandToolBuilder(tool="checkPeakFile.pl", base_command=["checkPeakFile.pl"], inputs=[ToolInput(tag="in_peak_slash_pos_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkpeakfile_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

