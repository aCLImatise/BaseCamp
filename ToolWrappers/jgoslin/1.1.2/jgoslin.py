from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Jgoslin_V0_1_0 = CommandToolBuilder(tool="jgoslin", base_command=["jgoslin"], inputs=[ToolInput(tag="in_grammar", input_type=String(optional=True), prefix="--grammar", doc=InputDocumentation(doc="Use the provided grammar explicitly instead of all\ngrammars. Options are: [GOSLIN, GOSLIN_FRAGMENTS,\nLIPIDMAPS, SWISSLIPIDS, HMDB, NONE]")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Input a lipid name for parsing.")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--outputFile", doc=InputDocumentation(doc="Write output to file 'goslin-out.tsv' instead of to\nstd out.")), ToolInput(tag="in_j_goslin_cli", input_type=String(), position=0, doc=InputDocumentation(doc="-f,--file <arg>      Input a file name to read from for lipid name for\nparsing. Each lipid name must be on a separate line."))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Write output to file 'goslin-out.tsv' instead of to\nstd out."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Jgoslin_V0_1_0().translate("wdl", allow_empty_container=True)

