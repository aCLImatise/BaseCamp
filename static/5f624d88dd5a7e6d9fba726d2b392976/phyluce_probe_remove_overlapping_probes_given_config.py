from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Phyluce_Probe_Remove_Overlapping_Probes_Given_Config_V0_1_0 = CommandToolBuilder(tool="phyluce_probe_remove_overlapping_probes_given_config", base_command=["phyluce_probe_remove_overlapping_probes_given_config"], inputs=[ToolInput(tag="in_probes", input_type=File(optional=True), prefix="--probes", doc=InputDocumentation(doc="The input probe file")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="The input conf file of probes names to remove")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output probe file to write"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The output probe file to write"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Probe_Remove_Overlapping_Probes_Given_Config_V0_1_0().translate("wdl", allow_empty_container=True)

