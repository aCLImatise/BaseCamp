from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Refold_V0_1_0 = CommandToolBuilder(tool="refold", base_command=["refold"], inputs=[ToolInput(tag="in_maximum", input_type=Boolean(optional=True), prefix="--maximum", doc=InputDocumentation(doc="Specify a maximum number of structures.\nDefault is 20 structures.")), ToolInput(tag="in_percent", input_type=Boolean(optional=True), prefix="--percent", doc=InputDocumentation(doc="Specify a maximum percent energy difference.\nDefault is 10 percent (specified as 10, not 0.1).")), ToolInput(tag="in_window", input_type=Boolean(optional=True), prefix="--window", doc=InputDocumentation(doc="Specify a window size.\nDefault is determined by the length of the sequence.\n")), ToolInput(tag="in_save_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ct_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refold_V0_1_0().translate("wdl", allow_empty_container=True)

