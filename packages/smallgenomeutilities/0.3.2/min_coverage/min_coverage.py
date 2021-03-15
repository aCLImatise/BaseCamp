from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Min_Coverage_V0_1_0 = CommandToolBuilder(tool="min_coverage", base_command=["min_coverage"], inputs=[ToolInput(tag="in_name_target_", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="Name of target contig, e.g. HXB2:2253-2256")), ToolInput(tag="in_input_sambam_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input SAM/BAM file"))], outputs=[], container="quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Min_Coverage_V0_1_0().translate("wdl")

