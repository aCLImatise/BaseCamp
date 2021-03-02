from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Bipartition_Written__V0_1_0 = CommandToolBuilder(tool="bipartition_written.", base_command=["bipartition", "written."], inputs=[ToolInput(tag="in_bi_partition", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file_one", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file_two", input_type=File(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_pfs_file", input_type=File(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bipartition_Written__V0_1_0().translate("wdl", allow_empty_container=True)

