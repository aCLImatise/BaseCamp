from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Uropa2Gtf_R_V0_1_0 = CommandToolBuilder(tool="uropa2gtf.R", base_command=["uropa2gtf.R"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="file or folder with input table(s) which should be reformatted to gtf file format")), ToolInput(tag="in_gtf_source", input_type=Boolean(optional=True), prefix="--gtf_source", doc=InputDocumentation(doc="gtf_source")), ToolInput(tag="in_feature", input_type=Boolean(optional=True), prefix="--feature", doc=InputDocumentation(doc="feature")), ToolInput(tag="in_threads", input_type=Boolean(optional=True), prefix="--threads", doc=InputDocumentation(doc="cores to be used for reformatting"))], outputs=[], container="quay.io/biocontainers/uropa:4.0.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Uropa2Gtf_R_V0_1_0().translate("wdl")

