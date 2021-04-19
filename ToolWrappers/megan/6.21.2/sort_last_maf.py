from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Sort_Last_Maf_V0_1_0 = CommandToolBuilder(tool="sort_last_maf", base_command=["sort-last-maf"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="[string]                 Input file in MAF format as produced by Last (.gz ok). Mandatory option.")), ToolInput(tag="in_reads_file", input_type=File(optional=True), prefix="--readsFile", doc=InputDocumentation(doc="[string]             File containing all reads, if given, determines output order (.gz ok).")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="[string]                Output file (stdout or .gz ok). Default value: stdout")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Echo commandline options and be verbose. Default value: false."))], outputs=[ToolOutput(tag="out_reads_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_reads_file", type_hint=File()), doc=OutputDocumentation(doc="[string]             File containing all reads, if given, determines output order (.gz ok).")), ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="[string]                Output file (stdout or .gz ok). Default value: stdout"))], container="quay.io/biocontainers/megan:6.21.2--h9ee0642_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sort_Last_Maf_V0_1_0().translate("wdl")

