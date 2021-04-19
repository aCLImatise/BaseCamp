from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Peakachu_Commands_V0_1_0 = CommandToolBuilder(tool="peakachu_commands", base_command=["peakachu", "commands"], inputs=[ToolInput(tag="in_peak_a_chu", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/peakachu:0.2.0--py36hc5360cc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Peakachu_Commands_V0_1_0().translate("wdl")

