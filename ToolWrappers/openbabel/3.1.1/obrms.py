from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Obrms_V0_1_0 = CommandToolBuilder(tool="obrms", base_command=["obrms"], inputs=[ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="--out", doc=InputDocumentation(doc="re-oriented test structure output")), ToolInput(tag="in_first_only", input_type=Boolean(optional=True), prefix="--firstonly", doc=InputDocumentation(doc="use only the first structure in the reference file")), ToolInput(tag="in_minimize", input_type=Boolean(optional=True), prefix="--minimize", doc=InputDocumentation(doc="compute minimum RMSD")), ToolInput(tag="in_cross", input_type=Boolean(optional=True), prefix="--cross", doc=InputDocumentation(doc="compute all n^2 RMSDs between molecules of reference file")), ToolInput(tag="in_separate", input_type=Boolean(optional=True), prefix="--separate", doc=InputDocumentation(doc="separate reference file into constituent molecules and report best RMSD")), ToolInput(tag="in_reference_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_test_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/openbabel:3.1.1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obrms_V0_1_0().translate("wdl")

