from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Vsnp_Fasta_To_Snps_Table_Py_V0_1_0 = CommandToolBuilder(tool="vsnp_fasta_to_snps_table.py", base_command=["vsnp_fasta_to_snps_table.py"], inputs=[ToolInput(tag="in_fast_a", input_type=String(optional=True), prefix="--fasta", doc=InputDocumentation(doc="provide an aligned fasta")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_prog", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vsnp_Fasta_To_Snps_Table_Py_V0_1_0().translate("wdl", allow_empty_container=True)

