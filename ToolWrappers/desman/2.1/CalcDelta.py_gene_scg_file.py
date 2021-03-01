from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Calcdelta_Py_Gene_Scg_File_V0_1_0 = CommandToolBuilder(tool="CalcDelta.py_gene_scg_file", base_command=["CalcDelta.py", "gene_scg_file"], inputs=[ToolInput(tag="in_calc_delta_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gene_cov_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_gene_scg_file", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_stub", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Calcdelta_Py_Gene_Scg_File_V0_1_0().translate("wdl", allow_empty_container=True)

