from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Tobias_Filterfragments_V0_1_0 = CommandToolBuilder(tool="TOBIAS_FilterFragments", base_command=["TOBIAS", "FilterFragments"], inputs=[ToolInput(tag="in_bam", input_type=Boolean(optional=True), prefix="--bam", doc=InputDocumentation(doc=".bam-file to filter")), ToolInput(tag="in_regions", input_type=Boolean(optional=True), prefix="--regions", doc=InputDocumentation(doc=".bed-file containing regions to filter fragments from")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="Mode 1: Remove fragment if both reads overlap .bed-regions. Mode 2:\nRemove whole fragment if one read is overlapping .bed-regions\n(default: 1)")), ToolInput(tag="in_output", input_type=Boolean(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to the filtered .bam-file (default: <prefix of")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads used for decompressing/compressing bam (default:\n10)")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Level of output logging (0: silent, 1: errors/warnings, 2: info, 3:\nstats, 4: debug, 5: spam) (default: 3)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tobias_Filterfragments_V0_1_0().translate("wdl", allow_empty_container=True)

