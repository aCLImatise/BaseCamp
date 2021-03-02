from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Ssu_Esl_Ssdraw_Msafile_V0_1_0 = CommandToolBuilder(tool="ssu_esl_ssdraw_msafile", base_command=["ssu-esl-ssdraw", "msafile"], inputs=[ToolInput(tag="in_ss_postscript_template", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_postscript_file_name", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_postscript_file_name", output_type=File(), selector=InputSelector(input_to_select="in_output_postscript_file_name", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ssu_Esl_Ssdraw_Msafile_V0_1_0().translate("wdl", allow_empty_container=True)

