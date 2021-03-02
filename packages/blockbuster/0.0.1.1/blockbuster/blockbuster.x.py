from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Blockbuster_X_V0_1_0 = CommandToolBuilder(tool="blockbuster.x", base_command=["blockbuster.x"], inputs=[ToolInput(tag="in_format", input_type=Int(optional=True), prefix="-format", doc=InputDocumentation(doc="file format of input file (default: 1)\n(1) bed\n(2) segemehl-output")), ToolInput(tag="in_distance", input_type=Int(optional=True), prefix="-distance", doc=InputDocumentation(doc="minimum distance between two clusters (default: 30)")), ToolInput(tag="in_min_cluster_height", input_type=Int(optional=True), prefix="-minClusterHeight", doc=InputDocumentation(doc="minimum height of a cluster (default: 10)")), ToolInput(tag="in_min_block_height", input_type=Int(optional=True), prefix="-minBlockHeight", doc=InputDocumentation(doc="minimum height of a block (default: 2)")), ToolInput(tag="in_scale", input_type=Int(optional=True), prefix="-scale", doc=InputDocumentation(doc="scale stddev for a single read (default: 0.2)")), ToolInput(tag="in_merge", input_type=Int(optional=True), prefix="-merge", doc=InputDocumentation(doc="merge reads with almost similar means (default: 0)")), ToolInput(tag="in_tag_filter", input_type=Int(optional=True), prefix="-tagFilter", doc=InputDocumentation(doc="skip tags with expression smaller than this value (default: 0)")), ToolInput(tag="in_print", input_type=Int(optional=True), prefix="-print", doc=InputDocumentation(doc="print out: (1) blocks (2) reads (default: 1)")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blockbuster_X_V0_1_0().translate("wdl", allow_empty_container=True)

