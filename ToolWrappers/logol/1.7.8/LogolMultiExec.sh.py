from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Logolmultiexec_Sh_V0_1_0 = CommandToolBuilder(tool="LogolMultiExec.sh", base_command=["LogolMultiExec.sh"], inputs=[ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_m", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_minimum", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_arguments", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_are", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_logol", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_model", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_or", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_grammar", input_type=String(), position=7, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Logolmultiexec_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

