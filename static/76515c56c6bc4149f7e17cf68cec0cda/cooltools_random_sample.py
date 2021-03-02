from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, String

Cooltools_Random_Sample_V0_1_0 = CommandToolBuilder(tool="cooltools_random_sample", base_command=["cooltools", "random-sample"], inputs=[ToolInput(tag="in_count", input_type=Int(optional=True), prefix="--count", doc=InputDocumentation(doc="The target number of contacts in the sample. The\nresulting sample size will not match it precisely.\nMutually exclusive with --frac")), ToolInput(tag="in_frac", input_type=Float(optional=True), prefix="--frac", doc=InputDocumentation(doc="The target sample size as a fraction of contacts in the\noriginal dataset. Mutually exclusive with --count")), ToolInput(tag="in_exact", input_type=Boolean(optional=True), prefix="--exact", doc=InputDocumentation(doc="If specified, use exact sampling that guarantees the\nsize of the output sample. Otherwise, binomial sampling\nwill be used and the sample size will be distributed\naround the target value.")), ToolInput(tag="in_chunksize", input_type=Int(optional=True), prefix="--chunksize", doc=InputDocumentation(doc="The number of pixels loaded and processed per step of")), ToolInput(tag="in_in_path", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_path", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cooltools:0.3.2--py36h29c9776_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cooltools_Random_Sample_V0_1_0().translate("wdl")

