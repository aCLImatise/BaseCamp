from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bxtools_Tile_V0_1_0 = CommandToolBuilder(tool="bxtools_tile", base_command=["bxtools", "tile"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Set verbose output")), ToolInput(tag="in_width", input_type=Boolean(optional=True), prefix="--width", doc=InputDocumentation(doc="Width of the tile [1000]")), ToolInput(tag="in_overlap", input_type=Boolean(optional=True), prefix="--overlap", doc=InputDocumentation(doc="Overlap of the tiles [0]")), ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="--bed", doc=InputDocumentation(doc="Rather than tile genome, input BED with regions")), ToolInput(tag="in_tag", input_type=Boolean(optional=True), prefix="--tag", doc=InputDocumentation(doc="Tag other than BX to evaluate (e.g. MI)")), ToolInput(tag="in_bam_slash_sam_slash_cram", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bxtools_Tile_V0_1_0().translate("wdl", allow_empty_container=True)

