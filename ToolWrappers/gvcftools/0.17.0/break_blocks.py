from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Break_Blocks_V0_1_0 = CommandToolBuilder(tool="break_blocks", base_command=["break_blocks"], inputs=[ToolInput(tag="in_region_file", input_type=File(optional=True), prefix="--region-file", doc=InputDocumentation(doc="A bed file specifying regions where call blocks should\nbe broken into individual positions (required)")), ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="samtools reference sequence (required)")), ToolInput(tag="in_exclude_off_target", input_type=Boolean(optional=True), prefix="--exclude-off-target", doc=InputDocumentation(doc="Don't output off-target vcf records. 'targeted' records\ninclude all those intersecting the input region plus\nany optionally included types specified below (default:\noutput all records)")), ToolInput(tag="in_include_variants", input_type=Boolean(optional=True), prefix="--include-variants", doc=InputDocumentation(doc="Add all variant calls to the targeted record set (only\napplies when exclude-off-target is used)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Break_Blocks_V0_1_0().translate("wdl", allow_empty_container=True)

