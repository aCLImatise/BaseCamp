from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Threepop_V0_1_0 = CommandToolBuilder(tool="threepop", base_command=["threepop"], inputs=[ToolInput(tag="in__input_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[file name] input file")), ToolInput(tag="in_number_snps_block", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="[int] number of SNPs per block for estimation of standard errors (1)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Threepop_V0_1_0().translate("wdl", allow_empty_container=True)

