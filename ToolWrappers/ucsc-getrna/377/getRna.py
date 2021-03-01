from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Getrna_V0_1_0 = CommandToolBuilder(tool="getRna", base_command=["getRna"], inputs=[ToolInput(tag="in_cds_upper", input_type=Boolean(optional=True), prefix="-cdsUpper", doc=InputDocumentation(doc="- lookup CDS and output it as upper case. If CDS annotation\ncan't be obtained, the sequence is skipped with a warning.")), ToolInput(tag="in_cds_upper_all", input_type=Boolean(optional=True), prefix="-cdsUpperAll", doc=InputDocumentation(doc="- like -cdsUpper, except keep sequeneces without CDS")), ToolInput(tag="in_incl_ver", input_type=Boolean(optional=True), prefix="-inclVer", doc=InputDocumentation(doc="- include version with sequence id.")), ToolInput(tag="in_peptides", input_type=Boolean(optional=True), prefix="-peptides", doc=InputDocumentation(doc="- translate mRNAs to peptides")), ToolInput(tag="in_database", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_acc_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getrna_V0_1_0().translate("wdl", allow_empty_container=True)

