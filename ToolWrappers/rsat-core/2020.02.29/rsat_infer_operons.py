from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsat_Infer_Operons_V0_1_0 = CommandToolBuilder(tool="rsat_infer_operons", base_command=["rsat", "infer-operons"], inputs=[ToolInput(tag="in_return", input_type=String(optional=True), prefix="-return", doc=InputDocumentation(doc=",leader,operon")), ToolInput(tag="in__return_qinfoupinfooperon", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="\ -return q_info,up_info,operon")), ToolInput(tag="in_infer_operons", input_type=String(), position=0, doc=InputDocumentation(doc="[1mDESCRIPTION[0m")), ToolInput(tag="in_genomics", input_type=String(), position=0, doc=InputDocumentation(doc="[1mMETHOD[0m")), ToolInput(tag="in_genes_dot", input_type=String(), position=0, doc=InputDocumentation(doc="infer-operons -v 1 -org Escherichia_coli_GCF_000005845.2_ASM584v2 -q")), ToolInput(tag="in_retrieve_seq", input_type=String(), position=0, doc=InputDocumentation(doc="neighbour-genes"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsat_Infer_Operons_V0_1_0().translate("wdl", allow_empty_container=True)

