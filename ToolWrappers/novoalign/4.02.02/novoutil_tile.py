from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Novoutil_Tile_V0_1_0 = CommandToolBuilder(tool="novoutil_tile", base_command=["novoutil", "tile"], inputs=[ToolInput(tag="in_sets_read_default", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Sets read length. Default 70.    -n 99     The maximum number of N's in a read. Default 30.    -s 9      The step size for tiled reads. Default 1.")), ToolInput(tag="in_s", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_novo_index", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_chr_name", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Novoutil_Tile_V0_1_0().translate("wdl", allow_empty_container=True)

