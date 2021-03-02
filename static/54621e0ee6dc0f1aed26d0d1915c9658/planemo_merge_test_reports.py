from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Planemo_Merge_Test_Reports_V0_1_0 = CommandToolBuilder(tool="planemo_merge_test_reports", base_command=["planemo", "merge_test_reports"], inputs=[ToolInput(tag="in_input_paths", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_path", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Merge_Test_Reports_V0_1_0().translate("wdl", allow_empty_container=True)

