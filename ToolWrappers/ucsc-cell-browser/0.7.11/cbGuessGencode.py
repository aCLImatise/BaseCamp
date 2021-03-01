from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Cbguessgencode_V0_1_0 = CommandToolBuilder(tool="cbGuessGencode", base_command=["cbGuessGencode"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="show debug messages")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cbguessgencode_V0_1_0().translate("wdl", allow_empty_container=True)

