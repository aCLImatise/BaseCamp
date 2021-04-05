from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Array, String

Medaka_Counts_V0_1_0 = CommandToolBuilder(tool="medaka_counts", base_command=["medaka_counts"], inputs=[ToolInput(tag="in_print", input_type=Boolean(optional=True), prefix="--print", doc=InputDocumentation(doc="print counts. (default: False)")), ToolInput(tag="in_d_types", input_type=Array(t=String(), optional=True), prefix="--dtypes", doc=InputDocumentation(doc="perform a multi-datatype tests. (default: None)")), ToolInput(tag="in_norm", input_type=Array(t=String(), optional=True), prefix="--norm", doc=InputDocumentation(doc="additional normalisation tests. (total, fwd_rev)\n(default: None)\n")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="alignment file.")), ToolInput(tag="in_region", input_type=String(), position=1, doc=InputDocumentation(doc="alignment region to sample."))], outputs=[], container="quay.io/biocontainers/medaka:1.2.5--py38h64b100c_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medaka_Counts_V0_1_0().translate("wdl")

