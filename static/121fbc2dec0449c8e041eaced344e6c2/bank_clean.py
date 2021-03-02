from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Bank_Clean_V0_1_0 = CommandToolBuilder(tool="bank_clean", base_command=["bank-clean"], inputs=[ToolInput(tag="in_directory_path_bank", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="The directory path of the bank to clean")), ToolInput(tag="in_display_compatible_version", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Display the compatible bank version")), ToolInput(tag="in_bank_clean", input_type=String(), position=0, doc=InputDocumentation(doc="[options]  <bank path>  [NCodes]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bank_Clean_V0_1_0().translate("wdl", allow_empty_container=True)

