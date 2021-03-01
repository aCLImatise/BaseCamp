from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Split_By_P7_Barcode_P7_File_V0_1_0 = CommandToolBuilder(tool="split_by_p7_barcode_p7_file", base_command=["split_by_p7_barcode", "p7_file"], inputs=[ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_split_by_p_seven_barcode", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_p_five_file", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_p_seven_file", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_By_P7_Barcode_P7_File_V0_1_0().translate("wdl", allow_empty_container=True)

