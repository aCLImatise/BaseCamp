from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Sander_Les_V0_1_0 = CommandToolBuilder(tool="sander.LES", base_command=["sander.LES"], inputs=[ToolInput(tag="in_scaled_md", input_type=File(optional=True), prefix="-scaledMD", doc=InputDocumentation(doc="] -cph-data -ce-data <file>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sander_Les_V0_1_0().translate("wdl", allow_empty_container=True)

