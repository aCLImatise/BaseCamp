from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Fanoise_V0_1_0 = CommandToolBuilder(tool="faNoise", base_command=["faNoise"], inputs=[ToolInput(tag="in_upper", input_type=Boolean(optional=True), prefix="-upper", doc=InputDocumentation(doc="- output in upper case")), ToolInput(tag="in_in_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_name", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_transition_ppt", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_transversion_ppt", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_insert_ppt", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_delete_ppt", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fanoise_V0_1_0().translate("wdl", allow_empty_container=True)

