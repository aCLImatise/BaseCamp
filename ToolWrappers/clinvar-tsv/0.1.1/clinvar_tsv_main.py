from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Clinvar_Tsv_Main_V0_1_0 = CommandToolBuilder(tool="clinvar_tsv_main", base_command=["clinvar_tsv", "main"], inputs=[ToolInput(tag="in_b_three_seven_path", input_type=Int(optional=True), prefix="--b37-path", doc=InputDocumentation(doc="Path to GRCh37 FAI-indexed FASTA file.")), ToolInput(tag="in_b_three_eight_path", input_type=Int(optional=True), prefix="--b38-path", doc=InputDocumentation(doc="Path to GRCh38 FAI-indexed FASTA file.")), ToolInput(tag="in_work_dir", input_type=File(optional=True), prefix="--work-dir", doc=InputDocumentation(doc="Path to working directory")), ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Number of cores to use")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Enables debugging helps")), ToolInput(tag="in_clin_var_tsv", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_main", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clinvar_Tsv_Main_V0_1_0().translate("wdl", allow_empty_container=True)

