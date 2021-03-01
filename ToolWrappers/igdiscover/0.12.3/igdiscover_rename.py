from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File, Int

Igdiscover_Rename_V0_1_0 = CommandToolBuilder(tool="igdiscover_rename", base_command=["igdiscover", "rename"], inputs=[ToolInput(tag="in_no_sort", input_type=Boolean(optional=True), prefix="--no-sort", doc=InputDocumentation(doc="Do not sort sequences by name")), ToolInput(tag="in_not_found", input_type=String(optional=True), prefix="--not-found", doc=InputDocumentation(doc="Append this text to the record name when the sequence\nwas not found in the template. Default: ' (not found)'")), ToolInput(tag="in_rename_from", input_type=File(optional=True), prefix="--rename-from", doc=InputDocumentation(doc="FASTA template file with correctly named sequences. If\na sequence in the target file is identical to one in\nthe template, it is assigned the name of the sequence\nin the template.")), ToolInput(tag="in_order_by", input_type=Int(optional=True), prefix="--order-by", doc=InputDocumentation(doc="FASTA template that contains genes in the desired\norder. If a name contains a '*' (asterisk), only the\npreceding part is used. Thus, VH4-4*01 and VH4-4*02\nare equivalent.\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igdiscover_Rename_V0_1_0().translate("wdl", allow_empty_container=True)

