from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean

Deepac_Explain_Fa2Transfac_V0_1_0 = CommandToolBuilder(tool="deepac_explain_fa2transfac", base_command=["deepac", "explain", "fa2transfac"], inputs=[ToolInput(tag="in_in_dir", input_type=Directory(optional=True), prefix="--in-dir", doc=InputDocumentation(doc="Directory containing motifs per filter (.fasta)")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_weighting", input_type=Boolean(optional=True), prefix="--weighting", doc=InputDocumentation(doc="Weight sequences by their DeepLIFT score")), ToolInput(tag="in_weight_dir", input_type=Directory(optional=True), prefix="--weight-dir", doc=InputDocumentation(doc="Directory containing the DeepLIFT scores per filter\n(only required if --weighting is chosen)\n"))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container="quay.io/biocontainers/deepac:0.13.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Explain_Fa2Transfac_V0_1_0().translate("wdl")

