from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Pysradb_Srp_To_Srr_V0_1_0 = CommandToolBuilder(tool="pysradb_srp_to_srr", base_command=["pysradb", "srp-to-srr"], inputs=[ToolInput(tag="in_save_to", input_type=File(optional=True), prefix="--saveto", doc=InputDocumentation(doc="Save output to file")), ToolInput(tag="in_detailed", input_type=Boolean(optional=True), prefix="--detailed", doc=InputDocumentation(doc="Output additional columns: [experiment_accession (SRX),\nsample_accession (SRS), study_alias (GSE), experiment_alias\n(GSM), sample_alias (GSM_), run_alias (GSM_r)]")), ToolInput(tag="in_desc", input_type=Boolean(optional=True), prefix="--desc", doc=InputDocumentation(doc="Should sample_attribute be included")), ToolInput(tag="in_expand", input_type=Boolean(optional=True), prefix="--expand", doc=InputDocumentation(doc="Should sample_attribute be expanded"))], outputs=[ToolOutput(tag="out_save_to", output_type=File(optional=True), selector=InputSelector(input_to_select="in_save_to", type_hint=File()), doc=OutputDocumentation(doc="Save output to file"))], container="quay.io/biocontainers/pysradb:1.0.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pysradb_Srp_To_Srr_V0_1_0().translate("wdl")

