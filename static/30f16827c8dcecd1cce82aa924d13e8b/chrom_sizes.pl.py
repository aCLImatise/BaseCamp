from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Chrom_Sizes_Pl_V0_1_0 = CommandToolBuilder(tool="chrom_sizes.pl", base_command=["chrom_sizes.pl"], inputs=[ToolInput(tag="in_exist_usrlocalbinchromsizespl_line", input_type=Int(optional=True), prefix="-h", doc=InputDocumentation(doc="not exist at /usr/local/bin/chrom_sizes.pl line 8."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chrom_Sizes_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

