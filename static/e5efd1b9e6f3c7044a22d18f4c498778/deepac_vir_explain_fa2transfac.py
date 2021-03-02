from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, String, Int

Deepac_Vir_Explain_Fa2Transfac_V0_1_0 = CommandToolBuilder(tool="deepac_vir_explain_fa2transfac", base_command=["deepac-vir", "explain", "fa2transfac"], inputs=[ToolInput(tag="in_in_dir", input_type=Directory(optional=True), prefix="--in-dir", doc=InputDocumentation(doc="Directory containing motifs per filter (.fasta)")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_weighting", input_type=Boolean(optional=True), prefix="--weighting", doc=InputDocumentation(doc="Weight sequences by their DeepLIFT score")), ToolInput(tag="in_weight_dir", input_type=Directory(optional=True), prefix="--weight-dir", doc=InputDocumentation(doc="Directory containing the DeepLIFT scores per filter\n(only required if --weighting is chosen)\n")), ToolInput(tag="in_deep_ac", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_explain", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fa_two_transfac", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container="quay.io/biocontainers/deepacvir:0.2.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Vir_Explain_Fa2Transfac_V0_1_0().translate("wdl")

