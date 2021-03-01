from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, String

Deepac_Strain_Explain_Xlogos_V0_1_0 = CommandToolBuilder(tool="deepac_strain_explain_xlogos", base_command=["deepac-strain", "explain", "xlogos"], inputs=[ToolInput(tag="in_fast_a_dir", input_type=Directory(optional=True), prefix="--fasta-dir", doc=InputDocumentation(doc="Directory containing motifs per filter (.fasta)")), ToolInput(tag="in_scores_dir", input_type=Directory(optional=True), prefix="--scores-dir", doc=InputDocumentation(doc="Directory containing nucleotide scores per filter\n(.csv)")), ToolInput(tag="in_logo_dir", input_type=Directory(optional=True), prefix="--logo-dir", doc=InputDocumentation(doc="Directory containing motifs in weighted transfac\nformat (only required if weighted weblogos should be\ncreated)")), ToolInput(tag="in_gain", input_type=Int(optional=True), prefix="--gain", doc=InputDocumentation(doc="Color saturation gain. Weblogo colors reach saturation\nwhen the average nt score=1/gain. Default: 128000.\nRecommended: input length * number of filters.")), ToolInput(tag="in_train_data", input_type=String(optional=True), prefix="--train-data", doc=InputDocumentation(doc="Training data set to compute GC-content")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Output directory\n")), ToolInput(tag="in_deep_ac", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_explain", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_x_logos", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory\n"))], container="quay.io/biocontainers/deepacstrain:0.2.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Strain_Explain_Xlogos_V0_1_0().translate("wdl")

