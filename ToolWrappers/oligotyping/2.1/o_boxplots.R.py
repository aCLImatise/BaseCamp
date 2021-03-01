from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String, Int

O_Boxplots_R_V0_1_0 = CommandToolBuilder(tool="o_boxplots.R", base_command=["o-boxplots.R"], inputs=[ToolInput(tag="in_mapping_var", input_type=File(optional=True), prefix="--mapping_var", doc=InputDocumentation(doc="Mapping variable to use from the sample mapping file. If none specified, the first column is used.")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--output_directory", doc=InputDocumentation(doc="Output directory to store images [default '.']")), ToolInput(tag="in_remove_outliers", input_type=String(optional=True), prefix="--remove_outliers", doc=InputDocumentation(doc="Remove upper outliers for better scaling [default 'FALSE']")), ToolInput(tag="in_pdf_height", input_type=Int(optional=True), prefix="--pdf_height", doc=InputDocumentation(doc="PDF output height [default '9']")), ToolInput(tag="in_this_script_do_tr", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_matrix", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sample_mapping", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output directory to store images [default '.']"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Boxplots_R_V0_1_0().translate("wdl", allow_empty_container=True)

