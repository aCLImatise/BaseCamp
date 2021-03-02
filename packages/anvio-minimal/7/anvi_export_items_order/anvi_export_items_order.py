from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Anvi_Export_Items_Order_V0_1_0 = CommandToolBuilder(tool="anvi_export_items_order", base_command=["anvi-export-items-order"], inputs=[ToolInput(tag="in_path__dbpath", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="PATH, --db-path DB PATH\nAn appropriate anvi'o database. (default: None)")), ToolInput(tag="in_name_name_dontprovide", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="NAME     The name of the order you want to export. If you don't\nprovide an order name, anvi'o will show you the names\nof all available orders in the database. (default:\nNone)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="File path to store results. (default: None)")), ToolInput(tag="in_path", input_type=File(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_4", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="File path to store results. (default: None)"))], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Export_Items_Order_V0_1_0().translate("wdl")

