from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Snapstats_Pl_V0_1_0 = CommandToolBuilder(tool="SNAPstats.pl", base_command=["SNAPstats.pl"], inputs=[ToolInput(tag="in_codons_dot", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snapstats_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

