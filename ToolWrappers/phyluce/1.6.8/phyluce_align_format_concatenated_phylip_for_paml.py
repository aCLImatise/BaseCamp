from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Phyluce_Align_Format_Concatenated_Phylip_For_Paml_V0_1_0 = CommandToolBuilder(tool="phyluce_align_format_concatenated_phylip_for_paml", base_command=["phyluce_align_format_concatenated_phylip_for_paml"], inputs=[ToolInput(tag="in_path_phylipformatted_alignment", input_type=File(optional=True), prefix="--phylip-alignment", doc=InputDocumentation(doc="The PATH to a PHYLIP-formatted alignment")), ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="The PATH to a config file containing partition\ninformation (RAxML-formatted)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The PATH to an output file (will be PHYLIP formatted)")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use.")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs.")), ToolInput(tag="in__config_config", input_type=String(), position=0, doc=InputDocumentation(doc="--config CONFIG"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="The PATH to an output file (will be PHYLIP formatted)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Align_Format_Concatenated_Phylip_For_Paml_V0_1_0().translate("wdl", allow_empty_container=True)

