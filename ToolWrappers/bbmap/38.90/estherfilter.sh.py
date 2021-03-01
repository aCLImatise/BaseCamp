from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Estherfilter_Sh_V0_1_0 = CommandToolBuilder(tool="estherfilter.sh", base_command=["estherfilter.sh"], inputs=[ToolInput(tag="in_query", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_cut_off", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bbmap:38.90--h1296035_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Estherfilter_Sh_V0_1_0().translate("wdl")

