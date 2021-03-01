from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Maftopsl_V0_1_0 = CommandToolBuilder(tool="mafToPsl", base_command=["mafToPsl"], inputs=[ToolInput(tag="in_query_src", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_target_src", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_maf", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maftopsl_V0_1_0().translate("wdl", allow_empty_container=True)

