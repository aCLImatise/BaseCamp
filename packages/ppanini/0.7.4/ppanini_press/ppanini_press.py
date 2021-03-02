from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Ppanini_Press_V0_1_0 = CommandToolBuilder(tool="ppanini_press", base_command=["ppanini_press"], inputs=[ToolInput(tag="in_gene_path", input_type=File(optional=True), prefix="--gene-path", doc=InputDocumentation(doc="a directory path to ppanini_gene_caller outputs which includes txt, gff, and faa files for each sample.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path for outputs")), ToolInput(tag="in_resume", input_type=Boolean(optional=True), prefix="--resume", doc=InputDocumentation(doc="bypass commands if the output files exist")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads/processes\n[DEFAULT: 1]")), ToolInput(tag="in_scale", input_type=String(optional=True), prefix="--scale", doc=InputDocumentation(doc="scale the abundance table")), ToolInput(tag="in_memory", input_type=String(optional=True), prefix="--memory", doc=InputDocumentation(doc="memory for -M option in CD-Hit\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ppanini_Press_V0_1_0().translate("wdl", allow_empty_container=True)

