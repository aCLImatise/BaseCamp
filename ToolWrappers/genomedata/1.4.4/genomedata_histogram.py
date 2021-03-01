from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Genomedata_Histogram_V0_1_0 = CommandToolBuilder(tool="genomedata_histogram", base_command=["genomedata-histogram"], inputs=[ToolInput(tag="in_include_coords", input_type=File(optional=True), prefix="--include-coords", doc=InputDocumentation(doc="limit summary to genomic coordinates in FILE")), ToolInput(tag="in_num_bins", input_type=Int(optional=True), prefix="--num-bins", doc=InputDocumentation(doc="use BINS bins\n")), ToolInput(tag="in_gd_archive", input_type=String(), position=0, doc=InputDocumentation(doc="genomedata archive")), ToolInput(tag="in_track_name", input_type=String(), position=1, doc=InputDocumentation(doc="track name"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genomedata_Histogram_V0_1_0().translate("wdl", allow_empty_container=True)

