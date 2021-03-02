from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bp_Oligo_Count_Pl_V0_1_0 = CommandToolBuilder(tool="bp_oligo_count.pl", base_command=["bp_oligo_count.pl"], inputs=[ToolInput(tag="in_oligo_count", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Oligo_Count_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

