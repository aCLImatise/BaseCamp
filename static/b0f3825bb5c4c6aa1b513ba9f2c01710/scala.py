from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Scala_V0_1_0 = CommandToolBuilder(tool="scala", base_command=["scala"], inputs=[ToolInput(tag="in_or", input_type=String(), position=0, doc=InputDocumentation(doc="scala -help"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scala_V0_1_0().translate("wdl", allow_empty_container=True)

