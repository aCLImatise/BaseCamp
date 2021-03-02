from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

A5_Pipeline_Pl_V0_1_0 = CommandToolBuilder(tool="a5_pipeline.pl", base_command=["a5_pipeline.pl"], inputs=[ToolInput(tag="in_meta_genome", input_type=Boolean(optional=True), prefix="--metagenome", doc=InputDocumentation(doc="")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="")), ToolInput(tag="in_preprocessed", input_type=Boolean(optional=True), prefix="--preprocessed", doc=InputDocumentation(doc="")), ToolInput(tag="in_end", input_type=Int(optional=True), prefix="--end", doc=InputDocumentation(doc="")), ToolInput(tag="in_begin", input_type=Int(optional=True), prefix="--begin", doc=InputDocumentation(doc="")), ToolInput(tag="in_lib_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_base", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    A5_Pipeline_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

