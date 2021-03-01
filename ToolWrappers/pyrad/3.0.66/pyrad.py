from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Pyrad_V0_1_0 = CommandToolBuilder(tool="pyrad", base_command=["pyrad"], inputs=[ToolInput(tag="in_input_file_sample", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="input file for within sample filtering and clustering")), ToolInput(tag="in_perform_stepwise_parts", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="perform step-wise parts of within analysis\n1 = barcode sorting\n2 = filter/edit raw sequences\n3 = within-sample clustering\n4 = estimate pi and e\n5 = consensus calling\n6 = cluster consensus\n7 = align & create output files")), ToolInput(tag="in_input_file_dtest", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="input file for D-test of introgression,\ncan iterate over multiple samples")), ToolInput(tag="in_creates_new_empty_file", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="creates a new empty input params.txt file")), ToolInput(tag="in_creates_new_dtest_file", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="creates a new empty Dtest input file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyrad_V0_1_0().translate("wdl", allow_empty_container=True)

