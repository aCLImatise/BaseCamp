from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Gifrop_V0_1_0 = CommandToolBuilder(tool="gifrop", base_command=["gifrop"], inputs=[ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use for parallel abricate commands")), ToolInput(tag="in_no_plots", input_type=Boolean(optional=True), prefix="--no_plots", doc=InputDocumentation(doc="Don't generate plots")), ToolInput(tag="in_min_genes", input_type=Boolean(optional=True), prefix="--min_genes", doc=InputDocumentation(doc="Only return islands with greater than this many genes (4)")), ToolInput(tag="in_flank_dna", input_type=Boolean(optional=True), prefix="--flank_dna", doc=InputDocumentation(doc="output this many bases of DNA on either side of each island (0)")), ToolInput(tag="in_get_islands", input_type=Boolean(optional=True), prefix="--get_islands", doc=InputDocumentation(doc="Run the main program to extract genomic islands"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gifrop_V0_1_0().translate("wdl", allow_empty_container=True)

