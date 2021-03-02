from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Add_Transcript_Feature_To_Gtf_Py_V0_1_0 = CommandToolBuilder(tool="add_transcript_feature_to_gtf.py", base_command=["add_transcript_feature_to_gtf.py"], inputs=[ToolInput(tag="in_script", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_add", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_transcript", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_feature", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_e_dot_gdot", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_cufflinks", input_type=String(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_gt_fs", input_type=String(), position=9, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Transcript_Feature_To_Gtf_Py_V0_1_0().translate("wdl", allow_empty_container=True)

