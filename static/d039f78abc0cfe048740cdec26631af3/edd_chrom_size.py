from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Edd_Chrom_Size_V0_1_0 = CommandToolBuilder(tool="edd_chrom_size", base_command=["edd", "chrom_size"], inputs=[ToolInput(tag="in_fdr", input_type=String(optional=True), prefix="--fdr", doc=InputDocumentation(doc="")), ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_bin_size", input_type=Int(optional=True), prefix="--bin-size", doc=InputDocumentation(doc="")), ToolInput(tag="in_edd", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Edd_Chrom_Size_V0_1_0().translate("wdl", allow_empty_container=True)

