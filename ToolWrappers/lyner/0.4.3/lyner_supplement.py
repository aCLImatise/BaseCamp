from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Lyner_Supplement_V0_1_0 = CommandToolBuilder(tool="lyner_supplement", base_command=["lyner", "supplement"], inputs=[ToolInput(tag="in_supplementary_data", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lyner_Supplement_V0_1_0().translate("wdl", allow_empty_container=True)

