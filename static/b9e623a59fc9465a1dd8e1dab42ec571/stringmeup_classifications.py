from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Stringmeup_Classifications_V0_1_0 = CommandToolBuilder(tool="stringmeup_classifications", base_command=["stringmeup", "classifications"], inputs=[ToolInput(tag="in_confidence_recal", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stringmeup_Classifications_V0_1_0().translate("wdl", allow_empty_container=True)

