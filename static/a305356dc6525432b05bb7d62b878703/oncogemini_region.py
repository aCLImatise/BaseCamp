from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Oncogemini_Region_V0_1_0 = CommandToolBuilder(tool="oncogemini_region", base_command=["oncogemini", "region"], inputs=[ToolInput(tag="in_reg", input_type=String(optional=True), prefix="--reg", doc=InputDocumentation(doc="Specify a chromosomal region chr:start-end")), ToolInput(tag="in_gene", input_type=String(optional=True), prefix="--gene", doc=InputDocumentation(doc="Specify a gene of interest")), ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="--header", doc=InputDocumentation(doc="Add a header of column names to the output.")), ToolInput(tag="in_columns", input_type=String(optional=True), prefix="--columns", doc=InputDocumentation(doc="A list of columns that you would like returned. Def. = '*'")), ToolInput(tag="in_filter", input_type=String(optional=True), prefix="--filter", doc=InputDocumentation(doc="Restrictions to apply to variants (SQL syntax)")), ToolInput(tag="in_show_samples", input_type=Boolean(optional=True), prefix="--show-samples", doc=InputDocumentation(doc="Add a column of all sample names with a variant to each")), ToolInput(tag="in_variant_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--format FORMAT   Format of output (JSON, TPED or default)"))], outputs=[], container="quay.io/biocontainers/oncogemini:1.0.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oncogemini_Region_V0_1_0().translate("wdl")

