from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Mixreads_V0_1_0 = CommandToolBuilder(tool="mixreads", base_command=["mixreads"], inputs=[ToolInput(tag="in_root_name_fast_q_file_a", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mixreads_V0_1_0().translate("wdl", allow_empty_container=True)

