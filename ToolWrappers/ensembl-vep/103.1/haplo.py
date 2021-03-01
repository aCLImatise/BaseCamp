from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Haplo_V0_1_0 = CommandToolBuilder(tool="haplo", base_command=["haplo"], inputs=[ToolInput(tag="in_input_file", input_type=Boolean(optional=True), prefix="--input_file", doc=InputDocumentation(doc="Input file")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output_file", doc=InputDocumentation(doc="Output file")), ToolInput(tag="in_force_overwrite", input_type=File(optional=True), prefix="--force_overwrite", doc=InputDocumentation(doc="Force overwriting of output file")), ToolInput(tag="in_species", input_type=Boolean(optional=True), prefix="--species", doc=InputDocumentation(doc="[species]    Species to use [default: 'human']"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file")), ToolOutput(tag="out_force_overwrite", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force_overwrite", type_hint=File()), doc=OutputDocumentation(doc="Force overwriting of output file"))], container="quay.io/biocontainers/ensembl-vep:103.1--pl526hecda079_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Haplo_V0_1_0().translate("wdl")

