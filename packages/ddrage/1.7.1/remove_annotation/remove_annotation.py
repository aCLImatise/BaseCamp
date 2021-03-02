from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Remove_Annotation_V0_1_0 = CommandToolBuilder(tool="remove_annotation", base_command=["remove_annotation"], inputs=[ToolInput(tag="in_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc="One or more fastq files from which the annotation is to be")), ToolInput(tag="in_extracted_dot", input_type=String(), position=1, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_Annotation_V0_1_0().translate("wdl", allow_empty_container=True)

