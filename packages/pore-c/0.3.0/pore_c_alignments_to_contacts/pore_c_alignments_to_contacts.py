from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pore_C_Alignments_To_Contacts_V0_1_0 = CommandToolBuilder(tool="pore_c_alignments_to_contacts", base_command=["pore_c", "alignments", "to-contacts"], inputs=[ToolInput(tag="in_pore_c_table", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_contact_table", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pore-c:0.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pore_C_Alignments_To_Contacts_V0_1_0().translate("wdl")

