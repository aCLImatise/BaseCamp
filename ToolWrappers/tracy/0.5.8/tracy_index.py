from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Tracy_Index_V0_1_0 = CommandToolBuilder(tool="tracy_index", base_command=["tracy", "index"], inputs=[ToolInput(tag="in_arg_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --output ] arg (='genome.fm9')  output file")), ToolInput(tag="in_genome_dot_fado_tgz", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_arg_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_output_file", type_hint=File()), doc=OutputDocumentation(doc="[ --output ] arg (='genome.fm9')  output file"))], container="quay.io/biocontainers/tracy:0.5.8--hf3ca161_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tracy_Index_V0_1_0().translate("wdl")

