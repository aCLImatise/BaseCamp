from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Analyzeposmap_V0_1_0 = CommandToolBuilder(tool="analyzePosMap", base_command=["analyzePosMap"], inputs=[ToolInput(tag="in_prefix_posmap_posmapprefixposmapfrgctg", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="prefix of posmap files (e.g., posmap-prefix.posmap.frgctg)")), ToolInput(tag="in_prefix_output_files", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="prefix of output files")), ToolInput(tag="in_path_gkpstore_used", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="path to gkpStore (not used)")), ToolInput(tag="in_select_multiple_allowedreadsingaps", input_type=String(optional=True), prefix="-A", doc=InputDocumentation(doc="select an analysis (multiple -A allowed)\nreadsingaps - probability that a gap can be filled with a read\nlibraryfate - per library detail of where each read ended up\n- and the status of each mate\nsurrogates  -"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Analyzeposmap_V0_1_0().translate("wdl", allow_empty_container=True)

