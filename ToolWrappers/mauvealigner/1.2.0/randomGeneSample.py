from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Randomgenesample_V0_1_0 = CommandToolBuilder(tool="randomGeneSample", base_command=["randomGeneSample"], inputs=[ToolInput(tag="in_input_x_mfa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_backbone_seq_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sample_genome", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_number_of_genes", input_type=Int(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_base_name", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_random", input_type=String(optional=True), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_seed", input_type=String(optional=True), position=6, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Randomgenesample_V0_1_0().translate("wdl", allow_empty_container=True)

