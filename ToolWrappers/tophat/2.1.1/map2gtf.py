from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Map2Gtf_V0_1_0 = CommandToolBuilder(tool="map2gtf", base_command=["map2gtf"], inputs=[ToolInput(tag="in_annotation_do_ttl_st", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_alignments_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_file_dot_bam", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Map2Gtf_V0_1_0().translate("wdl", allow_empty_container=True)

