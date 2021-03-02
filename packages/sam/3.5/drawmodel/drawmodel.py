from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Drawmodel_V0_1_0 = CommandToolBuilder(tool="drawmodel", base_command=["drawmodel"], inputs=[ToolInput(tag="in_landscape", input_type=String(optional=True), prefix="-landscape", doc=InputDocumentation(doc="[n]      Draw first or nth model")), ToolInput(tag="in_reg", input_type=Boolean(optional=True), prefix="-reg", doc=InputDocumentation(doc="[n]      Draw first or nth regularizer")), ToolInput(tag="in_freq", input_type=Boolean(optional=True), prefix="-freq", doc=InputDocumentation(doc="[n]      Draw first or nth frequencies")), ToolInput(tag="in_model_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_psfile", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drawmodel_V0_1_0().translate("wdl", allow_empty_container=True)

