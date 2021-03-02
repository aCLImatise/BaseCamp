from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Anvi_Script_Gen_Programs_Network_V0_1_0 = CommandToolBuilder(tool="anvi_script_gen_programs_network", base_command=["anvi-script-gen-programs-network"], inputs=[ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="File path to store results. (default: NETWORK.json)")), ToolInput(tag="in_program_names_to_focus", input_type=String(optional=True), prefix="--program-names-to-focus", doc=InputDocumentation(doc="Comma-spearated list of program names to focus Mostly\nfor debugging purposes. (default: None)"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="File path to store results. (default: NETWORK.json)"))], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Gen_Programs_Network_V0_1_0().translate("wdl")

