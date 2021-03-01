from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Circle_Map_Repeats_V0_1_0 = CommandToolBuilder(tool="Circle_Map_Repeats", base_command=["Circle-Map", "Repeats"], inputs=[ToolInput(tag="in_input_coordinate_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Input: coordinate name sorted bam file")), ToolInput(tag="in_output", input_type=Boolean(optional=True), prefix="--output", doc=InputDocumentation(doc="Ouput: Reads indicating circular DNA structural")), ToolInput(tag="in_mismatch", input_type=Boolean(optional=True), prefix="--mismatch", doc=InputDocumentation(doc="Number of mismatches allowed on the reads")), ToolInput(tag="in_bases", input_type=Boolean(optional=True), prefix="--bases", doc=InputDocumentation(doc="Number of bases to extend for computing the coverage\nratio. Default: 200")), ToolInput(tag="in_cmap_q", input_type=Boolean(optional=True), prefix="--cmapq", doc=InputDocumentation(doc="Minimum mapping quality treshold for coverage\ncomputation. Default: 0")), ToolInput(tag="in_extension", input_type=Boolean(optional=True), prefix="--extension", doc=InputDocumentation(doc="Number of bases inside the eccDNA coordinates to\ncompute the ratio. Default: 100")), ToolInput(tag="in_ratio", input_type=Boolean(optional=True), prefix="--ratio", doc=InputDocumentation(doc="Minimum in/out required ratio. Default: 0.6")), ToolInput(tag="in_fraction", input_type=Boolean(optional=True), prefix="--fraction", doc=InputDocumentation(doc="Required fraction to merge the intervals of the double\nmapped reads. Default 0.8")), ToolInput(tag="in_read_number", input_type=Boolean(optional=True), prefix="--read_number", doc=InputDocumentation(doc="Minimum number of reads required to output")), ToolInput(tag="in_variants", input_type=String(), position=0, doc=InputDocumentation(doc="-dir , --directory   Working directory, default is the working directory"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Circle_Map_Repeats_V0_1_0().translate("wdl", allow_empty_container=True)

