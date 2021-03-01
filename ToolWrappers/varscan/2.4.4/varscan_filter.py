from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Varscan_Filter_V0_1_0 = CommandToolBuilder(tool="varscan_filter", base_command=["varscan", "filter"], inputs=[ToolInput(tag="in_min_coverage", input_type=Boolean(optional=True), prefix="--min-coverage", doc=InputDocumentation(doc="Minimum read depth at a position to make a call [10]")), ToolInput(tag="in_min_reads_two", input_type=Boolean(optional=True), prefix="--min-reads2", doc=InputDocumentation(doc="Minimum supporting reads at a position to call variants [2]")), ToolInput(tag="in_min_strands_two", input_type=Boolean(optional=True), prefix="--min-strands2", doc=InputDocumentation(doc="Minimum # of strands on which variant observed (1 or 2) [1]")), ToolInput(tag="in_min_avg_qual", input_type=Boolean(optional=True), prefix="--min-avg-qual", doc=InputDocumentation(doc="Minimum average base quality for variant-supporting reads [20]")), ToolInput(tag="in_min_var_freq", input_type=Boolean(optional=True), prefix="--min-var-freq", doc=InputDocumentation(doc="Minimum variant allele frequency threshold [0.20]")), ToolInput(tag="in_p_value", input_type=Boolean(optional=True), prefix="--p-value", doc=InputDocumentation(doc="Default p-value threshold for calling variants [1e-01]")), ToolInput(tag="in_in_del_file", input_type=Boolean(optional=True), prefix="--indel-file", doc=InputDocumentation(doc="File of indels for filtering nearby SNPs")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="File to contain variants passing filters")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_filter", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_variant", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="File to contain variants passing filters"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varscan_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

