from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Get_Super_Read_Sizes_V0_1_0 = CommandToolBuilder(tool="get_super_read_sizes", base_command=["get_super_read_sizes"], inputs=[ToolInput(tag="in_kuni_tig_lenghts_file", input_type=File(optional=True), prefix="--kunitig_lenghts_file", doc=InputDocumentation(doc="*file with k-unitig lengths, two columns: kunitig length")), ToolInput(tag="in_super_reads_file", input_type=File(optional=True), prefix="--super_reads_file", doc=InputDocumentation(doc="*file with super-read names")), ToolInput(tag="in_cmdline_parse", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Super_Read_Sizes_V0_1_0().translate("wdl", allow_empty_container=True)

