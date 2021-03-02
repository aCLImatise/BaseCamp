from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Transcov_Generate_Coverage_V0_1_0 = CommandToolBuilder(tool="transcov_generate_coverage", base_command=["transcov", "generate-coverage"], inputs=[ToolInput(tag="in_bam_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Transcov_Generate_Coverage_V0_1_0().translate("wdl", allow_empty_container=True)

