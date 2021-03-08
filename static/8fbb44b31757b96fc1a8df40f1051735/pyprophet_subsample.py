from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, Boolean

Pyprophet_Subsample_V0_1_0 = CommandToolBuilder(tool="pyprophet_subsample", base_command=["pyprophet", "subsample"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="OpenSWATH input file.  [required]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Subsampled OSWS output file.")), ToolInput(tag="in_subsample_ratio", input_type=Float(optional=True), prefix="--subsample_ratio", doc=InputDocumentation(doc="Subsample ratio used per input file.  [default: 1]")), ToolInput(tag="in_no_test", input_type=Boolean(optional=True), prefix="--no-test", doc=InputDocumentation(doc="Run in test mode with fixed seed.  [default: False]"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Subsampled OSWS output file."))], container="quay.io/biocontainers/pyprophet:2.1.10--py38h0213d0e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyprophet_Subsample_V0_1_0().translate("wdl")

