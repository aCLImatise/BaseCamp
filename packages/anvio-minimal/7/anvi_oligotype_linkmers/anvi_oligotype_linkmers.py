from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Anvi_Oligotype_Linkmers_V0_1_0 = CommandToolBuilder(tool="anvi_oligotype_linkmers", base_command=["anvi-oligotype-linkmers"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Output file of `anvi-report-linkmers`. (default: None)")), ToolInput(tag="in_output_dir", input_type=File(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Directory path for output files (default: None)")), ToolInput(tag="in_link_mers_txt", input_type=String(), position=0, doc=InputDocumentation(doc="🍕 Can provide: ")), ToolInput(tag="in_oligo_types", input_type=String(), position=1, doc=InputDocumentation(doc="🍺 More on `anvi-oligotype-linkmers`:"))], outputs=[ToolOutput(tag="out_input_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_input_file", type_hint=File()), doc=OutputDocumentation(doc="Output file of `anvi-report-linkmers`. (default: None)")), ToolOutput(tag="out_output_dir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Directory path for output files (default: None)"))], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Oligotype_Linkmers_V0_1_0().translate("wdl")

