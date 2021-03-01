from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean, File

Svtools_Prune_V0_1_0 = CommandToolBuilder(tool="svtools_prune", base_command=["svtools", "prune"], inputs=[ToolInput(tag="in_distance", input_type=Int(optional=True), prefix="--distance", doc=InputDocumentation(doc="max separation distance (bp) of adjacent loci in\ncluster [50]")), ToolInput(tag="in_eval_param", input_type=String(optional=True), prefix="--eval-param", doc=InputDocumentation(doc="evaluating parameter for choosing best bedpe in a\ncluster(e.g. af=AlleleFrequency default:af)")), ToolInput(tag="in_is_sorted", input_type=Boolean(optional=True), prefix="--is-sorted", doc=InputDocumentation(doc="specify if an input file is sorted. Sort with svtools\nbedpesort. (default=False)")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="output bedpe to write (default: stdout)")), ToolInput(tag="in_tempdir", input_type=File(optional=True), prefix="--tempdir", doc=InputDocumentation(doc="Directory for temp file downloads")), ToolInput(tag="in_stdin_dot", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svtools_Prune_V0_1_0().translate("wdl", allow_empty_container=True)

