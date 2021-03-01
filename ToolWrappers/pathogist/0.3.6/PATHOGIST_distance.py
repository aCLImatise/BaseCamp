from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Pathogist_Distance_V0_1_0 = CommandToolBuilder(tool="PATHOGIST_distance", base_command=["PATHOGIST", "distance"], inputs=[ToolInput(tag="in_bed", input_type=File(optional=True), prefix="--bed", doc=InputDocumentation(doc="bed file of unwanted SNP positions in the genome")), ToolInput(tag="in_calls_path", input_type=String(), position=0, doc=InputDocumentation(doc="path to file containing paths to signal calls (e.g.\nMLST calls, CNV calls, etc)")), ToolInput(tag="in_output_path", input_type=String(), position=0, doc=InputDocumentation(doc="path to output tsv file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pathogist_Distance_V0_1_0().translate("wdl", allow_empty_container=True)

