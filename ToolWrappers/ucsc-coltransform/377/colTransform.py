from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Coltransform_V0_1_0 = CommandToolBuilder(tool="colTransform", base_command=["colTransform"], inputs=[ToolInput(tag="in_column", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_dot_tab", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_add_factor", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_mul_factor", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coltransform_V0_1_0().translate("wdl", allow_empty_container=True)

