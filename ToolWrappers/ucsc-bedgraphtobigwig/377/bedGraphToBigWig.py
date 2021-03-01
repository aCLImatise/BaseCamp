from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Bedgraphtobigwig_V0_1_0 = CommandToolBuilder(tool="bedGraphToBigWig", base_command=["bedGraphToBigWig"], inputs=[ToolInput(tag="in_block_size", input_type=Int(optional=True), prefix="-blockSize", doc=InputDocumentation(doc="- Number of items to bundle in r-tree.  Default 256")), ToolInput(tag="in_items_per_slot", input_type=Int(optional=True), prefix="-itemsPerSlot", doc=InputDocumentation(doc="- Number of data points bundled at lowest level. Default 1024")), ToolInput(tag="in_unc", input_type=Boolean(optional=True), prefix="-unc", doc=InputDocumentation(doc="- If set, do not use compression.")), ToolInput(tag="in_in_dot_bed_graph", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_chrom_dot_sizes", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedgraphtobigwig_V0_1_0().translate("wdl", allow_empty_container=True)

