from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Ivar_Getmasked_V0_1_0 = CommandToolBuilder(tool="ivar_getmasked", base_command=["ivar", "getmasked"], inputs=[ToolInput(tag="in_required_input_filtered", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="(Required) Input filtered variants tsv generated from `ivar filtervariants`")), ToolInput(tag="in_required_bed_file", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="(Required) BED file with primer sequences and positions")), ToolInput(tag="in_required_primer_pair", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="(Required) Primer pair information file containing left and right primer names for the same amplicon separated by a tab")), ToolInput(tag="in_required_prefix_output", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="(Required) Prefix for the output text file"))], outputs=[ToolOutput(tag="out_required_prefix_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_required_prefix_output", type_hint=File()), doc=OutputDocumentation(doc="(Required) Prefix for the output text file"))], container="quay.io/biocontainers/ivar:1.3.1--h089eab3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ivar_Getmasked_V0_1_0().translate("wdl")

