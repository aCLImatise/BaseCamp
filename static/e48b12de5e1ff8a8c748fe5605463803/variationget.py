from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Variationget_V0_1_0 = CommandToolBuilder(tool="variationget", base_command=["variationget"], inputs=[ToolInput(tag="in_variation", input_type=Boolean(optional=True), prefix="-variation", doc=InputDocumentation(doc=": enter variation value: Error: Unable to get reply from user - end of standard input"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Variationget_V0_1_0().translate("wdl", allow_empty_container=True)

