from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Directory, Boolean

Crispressoaggregate_V0_1_0 = CommandToolBuilder(tool="CRISPRessoAggregate", base_command=["CRISPRessoAggregate"], inputs=[ToolInput(tag="in_aggregation", input_type=String(optional=True), prefix="-Aggregation", doc=InputDocumentation(doc="CRISPResso Run Data-")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="Prefix for CRISPResso folders to aggregate (may be\nspecified multiple times)")), ToolInput(tag="in_suffix", input_type=String(optional=True), prefix="--suffix", doc=InputDocumentation(doc="Suffix for CRISPResso folders to aggregate")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Output name of the report")), ToolInput(tag="in_min_reads_for_inclusion", input_type=Int(optional=True), prefix="--min_reads_for_inclusion", doc=InputDocumentation(doc="Minimum number of reads for a run to be included in\nthe run summary")), ToolInput(tag="in_place_report_in_output_folder", input_type=Directory(optional=True), prefix="--place_report_in_output_folder", doc=InputDocumentation(doc="If true, report will be written inside the CRISPResso\noutput folder. By default, the report will be written\none directory up from the report output.")), ToolInput(tag="in_suppress_report", input_type=Boolean(optional=True), prefix="--suppress_report", doc=InputDocumentation(doc="Suppress output report")), ToolInput(tag="in_suppress_plots", input_type=Boolean(optional=True), prefix="--suppress_plots", doc=InputDocumentation(doc="Suppress output plots")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Show debug messages"))], outputs=[ToolOutput(tag="out_place_report_in_output_folder", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_place_report_in_output_folder", type_hint=File()), doc=OutputDocumentation(doc="If true, report will be written inside the CRISPResso\noutput folder. By default, the report will be written\none directory up from the report output."))], container="quay.io/biocontainers/crispresso2:2.1.0--py27h3dcb392_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crispressoaggregate_V0_1_0().translate("wdl")

