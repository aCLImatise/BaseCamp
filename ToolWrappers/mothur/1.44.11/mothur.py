from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mothur_V0_1_0 = CommandToolBuilder(tool="mothur", base_command=["mothur"], inputs=[ToolInput(tag="in_path_to_old_version", input_type=String(), position=0, doc=InputDocumentation(doc="for example: yourusername$ which mothur"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mothur_V0_1_0().translate("wdl", allow_empty_container=True)

