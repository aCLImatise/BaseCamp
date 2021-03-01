from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Rtg_Index_V0_1_0 = CommandToolBuilder(tool="rtg_index", base_command=["rtg", "index"], inputs=[ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="format of input to index. Allowed values are [sam,\nbam, cram, sv, coveragetsv, bed, vcf, auto]\n(Default is auto)")), ToolInput(tag="in_input_list_file", input_type=File(optional=True), prefix="--input-list-file", doc=InputDocumentation(doc="file containing a list of block compressed files\n(1 per line) containing genome position data\nFILE+                  block compressed files containing data to be\nindexed. May be specified 0 or more times"))], outputs=[], container="quay.io/biocontainers/rtg-tools:3.12--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rtg_Index_V0_1_0().translate("wdl")

