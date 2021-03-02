from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, String

Fastspar_Reduce_V0_1_0 = CommandToolBuilder(tool="fastspar_reduce", base_command=["fastspar_reduce"], inputs=[ToolInput(tag="in_correlation_table", input_type=File(optional=True), prefix="--correlation_table", doc=InputDocumentation(doc="Correlation input table")), ToolInput(tag="in_p_value_table", input_type=File(optional=True), prefix="--pvalue_table", doc=InputDocumentation(doc="Number of bootstrap samples to generate")), ToolInput(tag="in_output_prefix", input_type=File(optional=True), prefix="--output_prefix", doc=InputDocumentation(doc="Output prefix")), ToolInput(tag="in_correlation", input_type=Float(optional=True), prefix="--correlation", doc=InputDocumentation(doc="Absolute (sign is ignored) correlation threshold (default: 0.1)")), ToolInput(tag="in_p_value", input_type=Float(optional=True), prefix="--pvalue", doc=InputDocumentation(doc="P-value threshold (default: 0.05)")), ToolInput(tag="in_reduce", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastspar_Reduce_V0_1_0().translate("wdl", allow_empty_container=True)

