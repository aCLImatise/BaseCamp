from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Methyldackel_Format__V0_1_0 = CommandToolBuilder(tool="MethylDackel_format.", base_command=["MethylDackel", "format."], inputs=[ToolInput(tag="in_m_bias", input_type=String(), position=0, doc=InputDocumentation(doc="Determine the position-dependent methylation bias in a dataset,\nproducing diagnostic SVG images.")), ToolInput(tag="in_extract", input_type=String(), position=1, doc=InputDocumentation(doc="Extract methylation metrics from an alignment file in BAM/CRAM")), ToolInput(tag="in_format_dot", input_type=String(), position=2, doc=InputDocumentation(doc="mergeContext   Combine single Cytosine metrics from 'MethylDackel extract' into")), ToolInput(tag="in_per_read", input_type=String(), position=0, doc=InputDocumentation(doc="Generate a per-read methylation summary."))], outputs=[], container="quay.io/biocontainers/methyldackel:0.5.2--h7435645_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Methyldackel_Format__V0_1_0().translate("wdl")

