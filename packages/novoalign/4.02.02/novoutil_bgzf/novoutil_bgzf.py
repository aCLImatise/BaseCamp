from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Novoutil_Bgzf_V0_1_0 = CommandToolBuilder(tool="novoutil_bgzf", base_command=["novoutil", "bgzf"], inputs=[ToolInput(tag="in_sets_number_server", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="Sets the number of threads. Defaults to number of cores\non the server.")), ToolInput(tag="in_sets_block_size", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="Sets the block size in kilobytes, defaults to 64K bytes.\nIf set <=64K then files are compatible with tabix and BAM\nspecifications.\nAbove 64K may be useful for fast general purpose compression."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Novoutil_Bgzf_V0_1_0().translate("wdl", allow_empty_container=True)

