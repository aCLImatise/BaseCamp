from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Assess_Homopolymers_Analyse_Analyse_V0_1_0 = CommandToolBuilder(tool="assess_homopolymers_analyse_analyse", base_command=["assess_homopolymers", "analyse", "analyse"], inputs=[ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="Output directory (will be created). (default:\nhomopolymers)\n")), ToolInput(tag="in_pkl", input_type=String(), position=0, doc=InputDocumentation(doc="Input .pkl file(s)."))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory (will be created). (default:\nhomopolymers)\n"))], container="quay.io/biocontainers/pomoxis:0.3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assess_Homopolymers_Analyse_Analyse_V0_1_0().translate("wdl")

