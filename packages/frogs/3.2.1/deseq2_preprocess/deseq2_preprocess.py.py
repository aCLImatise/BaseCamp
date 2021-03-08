from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Deseq2_Preprocess_Py_V0_1_0 = CommandToolBuilder(tool="deseq2_preprocess.py", base_command=["deseq2_preprocess.py"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep temporary files to debug program.")), ToolInput(tag="in_var", input_type=String(optional=True), prefix="--var", doc=InputDocumentation(doc="Experimental variable suspected to have an impact on\nOTUs abundances. You may precise complexe string such\nas variables with confounding effect (ex:\nTreatment+Gender or Treatmet*Gender)")), ToolInput(tag="in_data", input_type=File(optional=True), prefix="--data", doc=InputDocumentation(doc="The path of RData file containing a phyloseq object,\nresult of FROGS Phyloseq Import Data")), ToolInput(tag="in_out_r_data", input_type=File(optional=True), prefix="--out-Rdata", doc=InputDocumentation(doc="The path to store resulting dataframe of DESeq2.\n[Default: DESeq2_preprocess.Rdata]")), ToolInput(tag="in_log_file", input_type=File(optional=True), prefix="--log-file", doc=InputDocumentation(doc="This output file will contain several information on\nexecuted commands.\n"))], outputs=[ToolOutput(tag="out_log_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log_file", type_hint=File()), doc=OutputDocumentation(doc="This output file will contain several information on\nexecuted commands.\n"))], container="quay.io/biocontainers/frogs:3.2.1--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deseq2_Preprocess_Py_V0_1_0().translate("wdl")

