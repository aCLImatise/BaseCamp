from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Last_Merge_Batches_V0_1_0 = CommandToolBuilder(tool="last_merge_batches", base_command=["last-merge-batches"], inputs=[ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Last_Merge_Batches_V0_1_0().translate("wdl", allow_empty_container=True)

