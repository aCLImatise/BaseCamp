from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Boolean, String

Deepac_Explain_Weblogos_V0_1_0 = CommandToolBuilder(tool="deepac_explain_weblogos", base_command=["deepac", "explain", "weblogos"], inputs=[ToolInput(tag="in_in_dir", input_type=Directory(optional=True), prefix="--in-dir", doc=InputDocumentation(doc="Directory containing motifs per filter")), ToolInput(tag="in_extension_file_format", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="{.fasta,.transfac}, --file-ext {.fasta,.transfac}\nExtension of file format of input files (.fasta or\n.transfac)")), ToolInput(tag="in_train_data", input_type=String(optional=True), prefix="--train-data", doc=InputDocumentation(doc="Training data set (.npy) to compute GC-content.\nN-padding lowers GC!")), ToolInput(tag="in_out_dir", input_type=Directory(optional=True), prefix="--out-dir", doc=InputDocumentation(doc="Output directory\n"))], outputs=[ToolOutput(tag="out_out_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="Output directory\n"))], container="quay.io/biocontainers/deepac:0.13.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepac_Explain_Weblogos_V0_1_0().translate("wdl")

