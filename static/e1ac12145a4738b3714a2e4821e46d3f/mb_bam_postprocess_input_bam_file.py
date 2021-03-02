from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Mb_Bam_Postprocess_Input_Bam_File_V0_1_0 = CommandToolBuilder(tool="mb_bam_postprocess_input_bam_file", base_command=["mb-bam-postprocess", "input_bam_file"], inputs=[ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min-length", doc=InputDocumentation(doc="")), ToolInput(tag="in_mock_in_bird_bam_post_process", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Bam_Postprocess_Input_Bam_File_V0_1_0().translate("wdl", allow_empty_container=True)

