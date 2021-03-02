from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pore_C_Contacts_Merge_V0_1_0 = CommandToolBuilder(tool="pore_c_contacts_merge", base_command=["pore_c", "contacts", "merge"], inputs=[ToolInput(tag="in_fof_n", input_type=Boolean(optional=True), prefix="--fofn", doc=InputDocumentation(doc="If this flag is set then the SRC_CONTACT_TABLES is a file of\nfilenames corresponding to the contact tables you want to merge.\nThis is workaround for when the command line gets too long.")), ToolInput(tag="in_dest_contact_table", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container="quay.io/biocontainers/pore-c:0.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pore_C_Contacts_Merge_V0_1_0().translate("wdl")

