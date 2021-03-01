from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Hiline_Index_Only_V0_1_0 = CommandToolBuilder(tool="HiLine_index_only", base_command=["HiLine", "index-only"], inputs=[ToolInput(tag="in_no_trim", input_type=Boolean(optional=True), prefix="--no-trim", doc=InputDocumentation(doc="Run HiC read trimming, trim sections of reads that align\npast restriction sites. Default=trim")), ToolInput(tag="in_bwa_one", input_type=Boolean(optional=True), prefix="--bwa1", doc=InputDocumentation(doc="Use bwa mem. Default=False")), ToolInput(tag="in_bwa_two", input_type=Boolean(optional=True), prefix="--bwa2", doc=InputDocumentation(doc="Use bwa-mem2. Default=True")), ToolInput(tag="in_minimap_two", input_type=Boolean(optional=True), prefix="--minimap2", doc=InputDocumentation(doc="Use minimap2. Default=False"))], outputs=[], container="quay.io/biocontainers/hiline:0.2.1--py38hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hiline_Index_Only_V0_1_0().translate("wdl")

