from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pore_C_Contacts_Summarize_V0_1_0 = CommandToolBuilder(tool="pore_c_contacts_summarize", base_command=["pore_c", "contacts", "summarize"], inputs=[ToolInput(tag="in_user_metadata", input_type=String(optional=True), prefix="--user-metadata", doc=InputDocumentation(doc="Add additional user metadata to the summary table,\nmust be a dictionary in json format")), ToolInput(tag="in_contact_table", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_read_summary_table", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pore-c:0.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pore_C_Contacts_Summarize_V0_1_0().translate("wdl")

