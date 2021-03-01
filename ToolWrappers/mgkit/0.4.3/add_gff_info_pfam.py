from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Add_Gff_Info_Pfam_V0_1_0 = CommandToolBuilder(tool="add_gff_info_pfam", base_command=["add-gff-info", "pfam"], inputs=[ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="In which attribute the Pfam ID/ACCESSION is stored\n(defaults to *gene_id*)")), ToolInput(tag="in_use_accession", input_type=Boolean(optional=True), prefix="--use-accession", doc=InputDocumentation(doc="If used, the attribute value is the Pfam ACCESSION\n(e.g. PF06894), not ID (e.g. Phage_TAC_2)")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Gff_Info_Pfam_V0_1_0().translate("wdl", allow_empty_container=True)

