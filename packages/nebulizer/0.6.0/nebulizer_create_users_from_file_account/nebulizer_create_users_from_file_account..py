from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Nebulizer_Create_Users_From_File_Account__V0_1_0 = CommandToolBuilder(tool="nebulizer_create_users_from_file_account.", base_command=["nebulizer", "create_users_from_file", "account."], inputs=[ToolInput(tag="in_nebulizer", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_create_users_from_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_galaxy", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_Create_Users_From_File_Account__V0_1_0().translate("wdl", allow_empty_container=True)

