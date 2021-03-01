from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pvacseq_Coverage_Filter_Output_File_V0_1_0 = CommandToolBuilder(tool="pvacseq_coverage_filter_output_file", base_command=["pvacseq", "coverage_filter", "output_file"], inputs=[ToolInput(tag="in_normal_cov", input_type=String(optional=True), prefix="--normal-cov", doc=InputDocumentation(doc="")), ToolInput(tag="in_pvac_seq", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_coverage_filter", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pvacseq_Coverage_Filter_Output_File_V0_1_0().translate("wdl", allow_empty_container=True)

