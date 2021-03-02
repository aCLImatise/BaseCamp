from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Umis_Bamtag_V0_1_0 = CommandToolBuilder(tool="umis_bamtag", base_command=["umis", "bamtag"], inputs=[ToolInput(tag="in_sam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Umis_Bamtag_V0_1_0().translate("wdl", allow_empty_container=True)

