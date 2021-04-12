from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Rbt_Csv_Report_V0_1_0 = CommandToolBuilder(tool="rbt_csv_report", base_command=["rbt", "csv-report"], inputs=[ToolInput(tag="in_formatter", input_type=File(optional=True), prefix="--formatter", doc=InputDocumentation(doc="Configure a custom formatter function for each column by providing a file\ncontaining a javascript object with csv column title as the key and a format\nfunction as the value. More information on the formatting functions and how\nto use them here: https://bootstrap-table.com/docs/api/column-\noptions/#formatter")), ToolInput(tag="in_rows_per_page", input_type=Int(optional=True), prefix="--rows-per-page", doc=InputDocumentation(doc="Sets the numbers of rows of each table per page. Default is 100 [default:\n100]")), ToolInput(tag="in_separator", input_type=File(optional=True), prefix="--separator", doc=InputDocumentation(doc="Change the separator of the csv file to tab or anything else. Default is ','\n[default: ,]")), ToolInput(tag="in_sort_column", input_type=String(optional=True), prefix="--sort-column", doc=InputDocumentation(doc="Column that the data should be sorted by")), ToolInput(tag="in_sort_order", input_type=String(optional=True), prefix="--sort-order", doc=InputDocumentation(doc="Order the data ascending or descending. Default is descending [default:\ndescending]  [possible values: ascending, descending]")), ToolInput(tag="in_csv_path", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/rust-bio-tools:0.20.3--h4eb7995_3", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbt_Csv_Report_V0_1_0().translate("wdl")

