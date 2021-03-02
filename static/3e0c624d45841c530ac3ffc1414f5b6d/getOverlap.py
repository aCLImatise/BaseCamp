from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Getoverlap_V0_1_0 = CommandToolBuilder(tool="getOverlap", base_command=["getOverlap"], inputs=[ToolInput(tag="in_input_file_use", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Input file. Use 'stdin' for pipes.")), ToolInput(tag="in_cols", input_type=Boolean(optional=True), prefix="-cols", doc=InputDocumentation(doc="Specify the columns (1-based) for the starts and ends of the\nfeatures for which you'd like to compute the overlap/distance.\nThe columns must be listed in the following order:\nstart1,end1,start2,end2"))], outputs=[], container="quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getoverlap_V0_1_0().translate("wdl")

