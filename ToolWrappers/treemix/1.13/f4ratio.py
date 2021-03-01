from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

F4Ratio_V0_1_0 = CommandToolBuilder(tool="f4ratio", base_command=["f4ratio"], inputs=[ToolInput(tag="in__input_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[file name] input file")), ToolInput(tag="in_number_snps_block", input_type=Boolean(optional=True), prefix="-k", doc=InputDocumentation(doc="[int] number of SNPs per block for estimation of standard errors (1)")), ToolInput(tag="in_populations_denominator_ratio", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="[file name] populations for denominator of f4 ratio")), ToolInput(tag="in__populations_estimate", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="[file name] populations to estimate"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    F4Ratio_V0_1_0().translate("wdl", allow_empty_container=True)

