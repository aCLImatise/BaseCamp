from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory, File

Deepac_Strain_Explain_Franking_V0_1_0 = CommandToolBuilder(tool="deepac_strain_explain_franking", base_command=["deepac-strain", "explain", "franking"], inputs=[ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="Use original filter scores or normalize scores\nrelative to true or predicted classes.")), ToolInput(tag="in_scores_dir", input_type=Directory(optional=True), prefix="--scores_dir", doc=InputDocumentation(doc="Directory containing filter contribution scores (.csv)")), ToolInput(tag="in_true_label", input_type=File(optional=True), prefix="--true_label", doc=InputDocumentation(doc="File with true read labels (.npy)")), ToolInput(tag="in_pred_label", input_type=File(optional=True), prefix="--pred_label", doc=InputDocumentation(doc="File with predicted read labels (.npy)")), ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="Output directory\n")), ToolInput(tag="in_optional_arguments", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="Output directory\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Strain_Explain_Franking_V0_1_0().translate("wdl", allow_empty_container=True)

