from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Esl_Ssdraw_Output_Postscript_File_Name_V0_1_0 = CommandToolBuilder(tool="esl_ssdraw_output postscript file name", base_command=["esl-ssdraw", "output postscript file name"], inputs=[ToolInput(tag="in_esl_ss_draw", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_msa_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_ss_postscript_template", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_postscript_file_name", input_type=File(), position=3, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_postscript_file_name", output_type=File(), selector=InputSelector(input_to_select="in_output_postscript_file_name", type_hint=File()), doc=OutputDocumentation(doc=""))], container="quay.io/biocontainers/easel:0.47--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Esl_Ssdraw_Output_Postscript_File_Name_V0_1_0().translate("wdl")

