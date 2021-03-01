from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Kggseq_V0_1_0 = CommandToolBuilder(tool="kggseq", base_command=["kggseq"], inputs=[ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_x_mx_on_eg", input_type=Boolean(optional=True), prefix="-Xmx1g", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_param_dot_txt", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kggseq_V0_1_0().translate("wdl", allow_empty_container=True)

