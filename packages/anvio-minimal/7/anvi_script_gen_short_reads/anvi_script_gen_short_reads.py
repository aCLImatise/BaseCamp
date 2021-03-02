from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Anvi_Script_Gen_Short_Reads_V0_1_0 = CommandToolBuilder(tool="anvi_script_gen_short_reads", base_command=["anvi-script-gen-short-reads"], inputs=[ToolInput(tag="in_output_file_path", input_type=File(optional=True), prefix="--output-file-path", doc=InputDocumentation(doc="Output FASTA file path (default: None)")), ToolInput(tag="in_configuration_ini", input_type=String(), position=0, doc=InputDocumentation(doc="🍕 Can provide: ")), ToolInput(tag="in_short_reads_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="🍺 More on `anvi-script-gen-short-reads`:"))], outputs=[ToolOutput(tag="out_output_file_path", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_path", type_hint=File()), doc=OutputDocumentation(doc="Output FASTA file path (default: None)"))], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Gen_Short_Reads_V0_1_0().translate("wdl")

