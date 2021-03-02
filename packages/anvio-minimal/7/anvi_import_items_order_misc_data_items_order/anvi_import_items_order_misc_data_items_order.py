from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Anvi_Import_Items_Order_Misc_Data_Items_Order_V0_1_0 = CommandToolBuilder(tool="anvi_import_items_order_misc_data_items_order", base_command=["anvi-import-items-order", "misc-data-items-order"], inputs=[ToolInput(tag="in_var_0", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="")), ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_an_vi_import_items_order", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_path", input_type=File(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_5", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Import_Items_Order_Misc_Data_Items_Order_V0_1_0().translate("wdl")

