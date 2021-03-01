from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Directory

Combine_Tradis_Plots_V0_1_0 = CommandToolBuilder(tool="combine_tradis_plots", base_command=["combine_tradis_plots"], inputs=[ToolInput(tag="in_plotfile_file_plots", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="|plotfile   : file with plots to be combined")), ToolInput(tag="in_outputdir_name_combined", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="|output_dir : name of directory for output (default: combined)"))], outputs=[ToolOutput(tag="out_outputdir_name_combined", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outputdir_name_combined", type_hint=File()), doc=OutputDocumentation(doc="|output_dir : name of directory for output (default: combined)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Combine_Tradis_Plots_V0_1_0().translate("wdl", allow_empty_container=True)

