from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gsutil_Label_V0_1_0 = CommandToolBuilder(tool="gsutil_label", base_command=["gsutil", "label"], inputs=[ToolInput(tag="in_remove_label_specified", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Remove the label with the specified key.")), ToolInput(tag="in_command_dot", input_type=String(), position=0, doc=InputDocumentation(doc="SET"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsutil_Label_V0_1_0().translate("wdl", allow_empty_container=True)

