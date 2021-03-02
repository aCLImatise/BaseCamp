from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Stag_Merge_Pl_V0_1_0 = CommandToolBuilder(tool="stag_merge.pl", base_command=["stag-merge.pl"], inputs=[ToolInput(tag="in_stag_merge_do_tpl", input_type=String(), position=0, doc=InputDocumentation(doc="-xml file1.xml file2.xml"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stag_Merge_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

