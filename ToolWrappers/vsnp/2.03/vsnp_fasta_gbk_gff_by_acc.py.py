from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Vsnp_Fasta_Gbk_Gff_By_Acc_Py_V0_1_0 = CommandToolBuilder(tool="vsnp_fasta_gbk_gff_by_acc.py", base_command=["vsnp_fasta_gbk_gff_by_acc.py"], inputs=[ToolInput(tag="in_accession", input_type=Int(optional=True), prefix="--accession", doc=InputDocumentation(doc="NCBI chromosome number")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="get FASTA file")), ToolInput(tag="in_gbk", input_type=Boolean(optional=True), prefix="--gbk", doc=InputDocumentation(doc="get gbk file")), ToolInput(tag="in_gff", input_type=Boolean(optional=True), prefix="--gff", doc=InputDocumentation(doc="get gff file")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_prog", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_gbk_gff_by_acc_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vsnp_Fasta_Gbk_Gff_By_Acc_Py_V0_1_0().translate("wdl", allow_empty_container=True)

