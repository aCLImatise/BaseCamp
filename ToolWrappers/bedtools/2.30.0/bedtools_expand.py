from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bedtools_Expand_V0_1_0 = CommandToolBuilder(tool="bedtools_expand", base_command=["bedtools", "expand"], inputs=[ToolInput(tag="in_input_file_assumes", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Input file. Assumes 'stdin' if omitted.")), ToolInput(tag="in_specify_column_based", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Specify the column (1-based) that should be summarized.\n- Required.")), ToolInput(tag="in_cols", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtools_Expand_V0_1_0().translate("wdl")

