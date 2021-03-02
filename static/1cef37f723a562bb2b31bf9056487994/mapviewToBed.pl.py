from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Mapviewtobed_Pl_V0_1_0 = CommandToolBuilder(tool="mapviewToBed.pl", base_command=["mapviewToBed.pl"], inputs=[ToolInput(tag="in_min_qual", input_type=String(), position=0, doc=InputDocumentation(doc="= Exclude alignments with <= this mapping quality score.")), ToolInput(tag="in_max_hits", input_type=String(), position=1, doc=InputDocumentation(doc="= Exclude alignments with > this number of hits.")), ToolInput(tag="in_file", input_type=File(), position=2, doc=InputDocumentation(doc="= Mapview file to convert."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mapviewtobed_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

