from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mb_Pileup2Sites_V0_1_0 = CommandToolBuilder(tool="mb_pileup2sites", base_command=["mb-pileup2sites"], inputs=[ToolInput(tag="in_pile_up_file", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Pileup2Sites_V0_1_0().translate("wdl", allow_empty_container=True)

