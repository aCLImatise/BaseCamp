from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Genomedata_Query_End_V0_1_0 = CommandToolBuilder(tool="genomedata_query_end", base_command=["genomedata-query", "end"], inputs=[ToolInput(tag="in_genome_data_query", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gd_archive", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_track_name", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_chrom", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_begin", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_end", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/genomedata:1.5.0--py36h485661d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genomedata_Query_End_V0_1_0().translate("wdl")

