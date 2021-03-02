from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Oncogemini_Dump_V0_1_0 = CommandToolBuilder(tool="oncogemini_dump", base_command=["oncogemini", "dump"], inputs=[ToolInput(tag="in_variants", input_type=Boolean(optional=True), prefix="--variants", doc=InputDocumentation(doc="Report all rows/columns from the variants table.")), ToolInput(tag="in_genotypes", input_type=Boolean(optional=True), prefix="--genotypes", doc=InputDocumentation(doc="Report all rows/columns from the variants table with one line\nper sample/genotype.")), ToolInput(tag="in_samples", input_type=Boolean(optional=True), prefix="--samples", doc=InputDocumentation(doc="Report all rows/columns from the samples table.")), ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="--header", doc=InputDocumentation(doc="Add a header of column names to the output.")), ToolInput(tag="in_sep", input_type=String(optional=True), prefix="--sep", doc=InputDocumentation(doc="Output column separator")), ToolInput(tag="in_tf_am", input_type=Boolean(optional=True), prefix="--tfam", doc=InputDocumentation(doc="Output sample information to TFAM format."))], outputs=[], container="quay.io/biocontainers/oncogemini:1.0.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oncogemini_Dump_V0_1_0().translate("wdl")

