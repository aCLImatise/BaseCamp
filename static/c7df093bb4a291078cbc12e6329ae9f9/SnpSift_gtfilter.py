from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Snpsift_Gtfilter_V0_1_0 = CommandToolBuilder(tool="SnpSift_gtfilter", base_command=["SnpSift", "gtfilter"], inputs=[ToolInput(tag="in_expr_file", input_type=File(optional=True), prefix="--exprFile", doc=InputDocumentation(doc=": Read expression from a file")), ToolInput(tag="in_file", input_type=File(optional=True), prefix="--file", doc=InputDocumentation(doc=": VCF input file. Default: STDIN")), ToolInput(tag="in_field", input_type=String(optional=True), prefix="--field", doc=InputDocumentation(doc=": Field name to replace if filter is true. Default: 'GT'")), ToolInput(tag="in_value", input_type=String(optional=True), prefix="--value", doc=InputDocumentation(doc=": Field value to replace if filter is true. Default: '.'")), ToolInput(tag="in_inverse", input_type=Boolean(optional=True), prefix="--inverse", doc=InputDocumentation(doc=": Inverse. Show lines that do not match filter expression")), ToolInput(tag="in_set", input_type=File(optional=True), prefix="--set", doc=InputDocumentation(doc=": Create a SET using 'file'")), ToolInput(tag="in_err_missing", input_type=Boolean(optional=True), prefix="--errMissing", doc=InputDocumentation(doc=": Error is a field is missing. Default: false")), ToolInput(tag="in_format", input_type=Int(optional=True), prefix="--format", doc=InputDocumentation(doc=": SnpEff format version: {2, 3}. Default: Auto")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_filter", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpsift_Gtfilter_V0_1_0().translate("wdl", allow_empty_container=True)

