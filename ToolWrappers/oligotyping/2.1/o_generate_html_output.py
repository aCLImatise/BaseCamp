from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File, String

O_Generate_Html_Output_V0_1_0 = CommandToolBuilder(tool="o_generate_html_output", base_command=["o-generate-html-output"], inputs=[ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--output-directory", doc=InputDocumentation(doc="Output directory for HTML output to be stored")), ToolInput(tag="in_entropy_figure", input_type=File(optional=True), prefix="--entropy-figure", doc=InputDocumentation(doc="Path for entropy figure *without* the file extension\n(e.g. only '/path/to/entropy' for\n'/path/to/entropy.png')\n")), ToolInput(tag="in_dict", input_type=String(), position=0, doc=InputDocumentation(doc="Serialized run info dictionary (RUNINFO.cPickle)"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output directory for HTML output to be stored"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Generate_Html_Output_V0_1_0().translate("wdl", allow_empty_container=True)

