from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, String

Phyluce_Probe_Get_Subsets_Of_Tiled_Probes_V0_1_0 = CommandToolBuilder(tool="phyluce_probe_get_subsets_of_tiled_probes", base_command=["phyluce_probe_get_subsets_of_tiled_probes"], inputs=[ToolInput(tag="in_probes", input_type=File(optional=True), prefix="--probes", doc=InputDocumentation(doc="The probe file to filter.")), ToolInput(tag="in_tax_a", input_type=Array(t=String(), optional=True), prefix="--taxa", doc=InputDocumentation(doc="The taxa for which to filter probes.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The file in which to store the output.")), ToolInput(tag="in_regex", input_type=String(optional=True), prefix="--regex", doc=InputDocumentation(doc="A regular expression to apply to the probe names for\nreplacement [default='^(uce-\d+)(?:_p\d+.*)'].\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The file in which to store the output."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Probe_Get_Subsets_Of_Tiled_Probes_V0_1_0().translate("wdl", allow_empty_container=True)

