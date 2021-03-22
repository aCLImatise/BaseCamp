from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mapula_Merge_V0_1_0 = CommandToolBuilder(tool="mapula_merge", base_command=["mapula", "merge"], inputs=[ToolInput(tag="in_expected_counts_columns", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="Expected counts CSV. Required columns: reference,expected_count.")), ToolInput(tag="in_sets_formats_results", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Sets the format(s) in which to output results. [Choices: csv,\njson, all] (Default: csv).")), ToolInput(tag="in_prefix_there_are", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Prefix of the output files, if there are any.")), ToolInput(tag="in_map_ula", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mapula:2.1.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mapula_Merge_V0_1_0().translate("wdl")

