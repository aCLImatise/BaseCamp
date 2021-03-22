from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mapula_Count_V0_1_0 = CommandToolBuilder(tool="mapula_count", base_command=["mapula", "count"], inputs=[ToolInput(tag="in_expected_counts_csv", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Expected counts CSV. Required columns:\nreference,expected_count.")), ToolInput(tag="in_enable_relay_stdout", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Enable relay of input SAM records to stdout.")), ToolInput(tag="in_aggregating_output_results", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="If aggregating [-a], output results in this format. [Choices:\ncsv, json, all] (Default: csv).")), ToolInput(tag="in_change_aggregation_behaviour", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="[ ...]    Change aggregation behaviour to split by these criteria, space\nseparated. [Choices: source fasta run_id barcode read_group\nreference] (Default: all).")), ToolInput(tag="in_prefix_there_are", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Prefix of the output files, if there are any.")), ToolInput(tag="in_r", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_map_ula", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mapula:2.1.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mapula_Count_V0_1_0().translate("wdl")

