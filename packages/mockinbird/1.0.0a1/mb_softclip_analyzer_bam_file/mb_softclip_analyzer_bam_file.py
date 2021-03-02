from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mb_Softclip_Analyzer_Bam_File_V0_1_0 = CommandToolBuilder(tool="mb_softclip_analyzer_bam_file", base_command=["mb-softclip-analyzer", "bam_file"], inputs=[ToolInput(tag="in_top_n", input_type=String(optional=True), prefix="--top_n", doc=InputDocumentation(doc="")), ToolInput(tag="in_output_dir", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Softclip_Analyzer_Bam_File_V0_1_0().translate("wdl", allow_empty_container=True)

