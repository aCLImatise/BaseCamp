from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Bam2Wig_V0_1_0 = CommandToolBuilder(tool="bam2wig", base_command=["bam2wig"], inputs=[ToolInput(tag="in_allows_specify_region", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Allows to specify a target region, e.g. 'chr3L:10-250'\nThis option can only be used if an index file exists\nSee: samtools index")), ToolInput(tag="in_string_provided_track", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="A string might be provided as track name"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam2Wig_V0_1_0().translate("wdl", allow_empty_container=True)

