from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Phyluce_Probe_Reconstruct_Uce_From_Probe_V0_1_0 = CommandToolBuilder(tool="phyluce_probe_reconstruct_uce_from_probe", base_command=["phyluce_probe_reconstruct_uce_from_probe"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="The input probe set")), ToolInput(tag="in_output_fasta_file", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The output FASTA file")), ToolInput(tag="in_verbosity", input_type=String(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="The logging level to use.")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="The path to a directory to hold logs.")), ToolInput(tag="in_var_4", input_type=String(), position=0, doc=InputDocumentation(doc="[--verbosity {INFO,WARN,CRITICAL}]"))], outputs=[ToolOutput(tag="out_output_fasta_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fasta_file", type_hint=File()), doc=OutputDocumentation(doc="The output FASTA file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Probe_Reconstruct_Uce_From_Probe_V0_1_0().translate("wdl", allow_empty_container=True)

