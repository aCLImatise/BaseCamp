from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Splitseq_Py_Selected_V0_1_0 = CommandToolBuilder(tool="SplitSeq.py_selected", base_command=["SplitSeq.py", "selected"], inputs=[ToolInput(tag="in_split_seq_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splitseq_Py_Selected_V0_1_0().translate("wdl", allow_empty_container=True)

