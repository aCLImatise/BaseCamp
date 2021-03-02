from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Pbsa_V0_1_0 = CommandToolBuilder(tool="pbsa", base_command=["pbsa"], inputs=[ToolInput(tag="in_var_0", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_2", input_type=Boolean(optional=True), prefix="-O", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbsa_V0_1_0().translate("wdl", allow_empty_container=True)

