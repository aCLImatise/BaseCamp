from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Smaca_V0_1_0 = CommandToolBuilder(tool="smaca", base_command=["smaca"], inputs=[ToolInput(tag="in_profile", input_type=Boolean(optional=True), prefix="--profile", doc=InputDocumentation(doc="execution statistics (only for debug purposes)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file")), ToolInput(tag="in_n_cpus", input_type=Int(optional=True), prefix="--ncpus", doc=InputDocumentation(doc="number of cores to use")), ToolInput(tag="in_reference", input_type=Boolean(optional=True), prefix="--reference", doc=InputDocumentation(doc="[hg19|hg38]  reference genome that was used for alignment")), ToolInput(tag="in_bam_list_dot_dot_dot", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file"))], container="quay.io/biocontainers/smaca:1.2.3--py37h0498b6d_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Smaca_V0_1_0().translate("wdl")

