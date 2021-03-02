from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Wigtobigwig_V0_1_0 = CommandToolBuilder(tool="wigToBigWig", base_command=["wigToBigWig"], inputs=[ToolInput(tag="in_block_size", input_type=Int(optional=True), prefix="-blockSize", doc=InputDocumentation(doc="- Number of items to bundle in r-tree.  Default 256")), ToolInput(tag="in_items_per_slot", input_type=Int(optional=True), prefix="-itemsPerSlot", doc=InputDocumentation(doc="- Number of data points bundled at lowest level. Default 1024")), ToolInput(tag="in_clip", input_type=Boolean(optional=True), prefix="-clip", doc=InputDocumentation(doc="- If set just issue warning messages rather than dying if wig\nfile contains items off end of chromosome or chromosomes\nthat are not in the chrom.sizes file.")), ToolInput(tag="in_unc", input_type=Boolean(optional=True), prefix="-unc", doc=InputDocumentation(doc="- If set, do not use compression.")), ToolInput(tag="in_fixed_summaries", input_type=Boolean(optional=True), prefix="-fixedSummaries", doc=InputDocumentation(doc="- If set, use a predefined sequence of summary levels.")), ToolInput(tag="in_keep_all_chromosomes", input_type=Boolean(optional=True), prefix="-keepAllChromosomes", doc=InputDocumentation(doc="- If set, store all chromosomes in b-tree.")), ToolInput(tag="in_in_do_twig", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_chrom_dot_sizes", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wigtobigwig_V0_1_0().translate("wdl", allow_empty_container=True)

