from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Magpurify_Contaminants__V0_1_0 = CommandToolBuilder(tool="magpurify_contaminants.", base_command=["magpurify", "contaminants."], inputs=[ToolInput(tag="in_mag_purify", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Magpurify_Contaminants__V0_1_0().translate("wdl", allow_empty_container=True)

