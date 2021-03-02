from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File

Long_To_Linked_V0_1_0 = CommandToolBuilder(tool="long_to_linked", base_command=["long-to-linked"], inputs=[ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="Length for long reads to be cut to")), ToolInput(tag="in_min_size", input_type=Int(optional=True), prefix="--min_size", doc=InputDocumentation(doc="Minimum read length to be considered a molecule")), ToolInput(tag="in_auto_span", input_type=Boolean(optional=True), prefix="--auto_span", doc=InputDocumentation(doc="Option to calculate spanning molecules threshold")), ToolInput(tag="in_auto_dist", input_type=Boolean(optional=True), prefix="--auto_dist", doc=InputDocumentation(doc="Option to calculate read length p5 for dist parameter")), ToolInput(tag="in_genome_size", input_type=Int(optional=True), prefix="--genome_size", doc=InputDocumentation(doc="Genome size for calculating sequence coverage and\nminimum spanning molecules parameter (e.g. 3e9)")), ToolInput(tag="in_param_outfile", input_type=File(optional=True), prefix="--param_outfile", doc=InputDocumentation(doc="Output file for calculated span\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_param_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_param_outfile", type_hint=File()), doc=OutputDocumentation(doc="Output file for calculated span\n"))], container="quay.io/biocontainers/tigmint:1.2.2--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Long_To_Linked_V0_1_0().translate("wdl")

