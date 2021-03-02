from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Diri_Sampler_V0_1_0 = CommandToolBuilder(tool="diri_sampler", base_command=["diri_sampler"], inputs=[ToolInput(tag="in_a", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="not compat. with -k")), ToolInput(tag="in_k", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="not compat. with -K")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="-i <input data file>")), ToolInput(tag="in_parameters", input_type=String(), position=1, doc=InputDocumentation(doc="-j <sampling iterations>"))], outputs=[], container="quay.io/biocontainers/shorah:1.99.2--py38h032b7f5_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Diri_Sampler_V0_1_0().translate("wdl")

