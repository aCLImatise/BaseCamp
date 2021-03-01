from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mb_Preprocess_Parclip_Fastq_V0_1_0 = CommandToolBuilder(tool="mb_preprocess_parclip_fastq", base_command=["mb-preprocess", "parclip_fastq"], inputs=[ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log_level", doc=InputDocumentation(doc="")), ToolInput(tag="in_mock_in_bird_preprocess", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Preprocess_Parclip_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

