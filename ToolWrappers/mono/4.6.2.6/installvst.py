from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Installvst_V0_1_0 = CommandToolBuilder(tool="installvst", base_command=["installvst"], inputs=[ToolInput(tag="in_vs_template_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_destination_path", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Installvst_V0_1_0().translate("wdl", allow_empty_container=True)

