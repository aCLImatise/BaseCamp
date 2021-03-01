from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Formcon_V0_1_0 = CommandToolBuilder(tool="formcon", base_command=["formcon"], inputs=[ToolInput(tag="in_file_of_reads", input_type=String(), position=0, doc=InputDocumentation(doc="file of DNA reads in FASTA format")), ToolInput(tag="in_min_distance", input_type=String(), position=1, doc=InputDocumentation(doc="minimum length in bp of subclones")), ToolInput(tag="in_max_distance", input_type=String(), position=2, doc=InputDocumentation(doc="maximum length in bp of subclones"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Formcon_V0_1_0().translate("wdl", allow_empty_container=True)

