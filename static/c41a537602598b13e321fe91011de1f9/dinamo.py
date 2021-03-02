from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Dinamo_V0_1_0 = CommandToolBuilder(tool="dinamo", base_command=["dinamo"], inputs=[ToolInput(tag="in_norc", input_type=Boolean(optional=True), prefix="--norc", doc=InputDocumentation(doc=": When -p is not used, prevents dinamo to link motif to their reverse complement\n(Please be warned : not linking the motif to their reverse complement usually doubles memory usage)")), ToolInput(tag="in_no_log", input_type=Boolean(optional=True), prefix="--no-log", doc=InputDocumentation(doc=": Prevents the log ouput from being displayed"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dinamo_V0_1_0().translate("wdl", allow_empty_container=True)

