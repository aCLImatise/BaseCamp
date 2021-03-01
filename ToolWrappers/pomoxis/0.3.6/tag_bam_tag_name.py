from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tag_Bam_Tag_Name_V0_1_0 = CommandToolBuilder(tool="tag_bam_tag_name", base_command=["tag_bam", "tag_name"], inputs=[ToolInput(tag="in_tag_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_tag_name", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_tag_value", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pomoxis:0.3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tag_Bam_Tag_Name_V0_1_0().translate("wdl")

