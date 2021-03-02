from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Iu_Trim_Fastq_V0_1_0 = CommandToolBuilder(tool="iu_trim_fastq", base_command=["iu-trim-fastq"], inputs=[ToolInput(tag="in_trim_from", input_type=Int(optional=True), prefix="--trim-from", doc=InputDocumentation(doc="Trim from")), ToolInput(tag="in_trim_to", input_type=Int(optional=True), prefix="--trim-to", doc=InputDocumentation(doc="Trim to\n")), ToolInput(tag="in_file_path", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iu_Trim_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

